using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;
using web.Common;

namespace Web.main
{
    /// <summary>
    /// 导入excel
    /// </summary>
    public partial class InputExcel : System.Web.UI.Page
    {
        tb_book_info bookInfoBLL = new tb_book_info();
        tb_upload_record uploadRecordBLL = new tb_upload_record();
        web.Model.tb_book_info bookInfoModel;
        web.Model.tb_upload_record uploadRecordModel;

        tb_book_type booktypeBLL = new tb_book_type();
        web.Model.tb_book_type bookTypeModel;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
   
        /// <summary>
        /// 上传excel文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                //获取传文件的名字
                string fileName = FileId.FileName;
                //判断upload文件夹是否存在，不存在则创建
                if (Directory.Exists(Server.MapPath("~/excelupload")) == false)
                {
                    Directory.CreateDirectory(Server.MapPath("~/excelupload"));
                }
                //获取服务器路径地址
                string savePath = Server.MapPath("~/excelupload/");
                //设置上传到服务器端的文件名称
                string strFileName = DateTime.Now.ToString("yyyyMMddHHmmss") + new Random(DateTime.Now.Second).Next(10000) + fileName.Substring(fileName.LastIndexOf('.'));
                FileId.SaveAs(savePath + strFileName);

                //将数据展示出来
                var dt = ExcelHelper.GetDataTable(Server.MapPath("~/excelupload/" + strFileName));
                g1.DataSource = dt;
                g1.DataBind();

                //将导入按钮的可见性设置为真，即可以导入数据
                btnInput.Visible = true;

                //创建上传记录
                uploadRecordModel = new web.Model.tb_upload_record();
                uploadRecordModel.upload_time = (DateTime?)DateTime.Now;
                uploadRecordModel.file_name = strFileName;
                uploadRecordBLL.Add(uploadRecordModel);

                #region 导入图书分类(已导入，不再执行)
                //Regex Reg = new Regex("^[A-Z]");
                //Regex RegCHZN = new Regex("[\u4e00-\u9fa5]");
                //StreamReader sr = new StreamReader(@"C:\Users\Windows10\Desktop\图书分类列表.txt", Encoding.Default);
                ////DataTable dt2 = new DataTable();
                ////dt2.Columns.Add("no", "".GetType());
                ////dt2.Columns.Add("name", "".GetType());
                ////Int32 count = 0;
                //String line;
                //while ((line = sr.ReadLine()) != null)
                //{
                //    if (Reg.Match(line).Success)
                //    {
                //        int index = 0;
                //        for (int i = 0; i < line.Length - 1; i++)
                //        {
                //            string temp = line.Substring(i, 1);
                //            if (RegCHZN.Match(temp).Success)
                //            {
                //                index = i;
                //                break;
                //            }
                //        }
                //        //加入到数据库
                //        bookTypeModel = new web.Model.tb_book_type();
                //        bookTypeModel.no= line.Substring(0, index);
                //        bookTypeModel.name= line.Substring(index, line.Length - index);
                //        booktypeBLL.Add(bookTypeModel);

                //        //dt2.Rows.Add();
                //        //dt2.Rows[count]["no"] = line.Substring(0, index);
                //        //dt2.Rows[count]["name"] = line.Substring(index, line.Length - index);
                //        //count++;
                //    }
                //}
                //var newpath = Server.MapPath("~/excelupload/" + "booktypes" + ".xls");
                //ExcelHelper.x2003.TableToExcelForXLS(dt2, newpath);

                #endregion
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(ex.ToString(), ex);
                Response.Write("<script type='text/javascript'>alert(\"文件上传失败:" + ex.ToString() + "\")</script>");
            }
        }

        /// <summary>
        /// 导入数据
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnInput_Click(object sender, EventArgs e)
        {
            try
            {
                //获取最新的一天上传记录
                uploadRecordModel = uploadRecordBLL.MyGetLastRecord();
                //从最新的一条记录中 取出excel的名字。并且转换为DataTable
                DataTable dt = ExcelHelper.GetDataTable(Server.MapPath("~/excelupload/" + uploadRecordModel.file_name));
                //循环的将DataTable中的数据添加到数据库中
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    bookInfoModel = new web.Model.tb_book_info();
                    bookInfoModel.id = Guid.NewGuid().ToString();
                    bookInfoModel.name = dt.Rows[i]["书名"].ToString();
                    bookInfoModel.author = dt.Rows[i]["作者"].ToString();
                    bookInfoModel.ISBN = dt.Rows[i]["ISBN"].ToString();
                    bookInfoModel.publisher = dt.Rows[i]["出版社"].ToString();
                    bookInfoModel.language = dt.Rows[i]["语言"].ToString();
                    bookInfoModel.putin_time = DateTime.Now;
                    bookInfoModel.status = true;
                    bookInfoModel.price = decimal.Parse(dt.Rows[i]["价格"].ToString());
                    bookInfoModel.type = dt.Rows[i]["分类号"].ToString();
                    bookInfoModel.spell = strToPinyin.GetChineseSpell(bookInfoModel.name);
                    //添加到数据库
                    bookInfoBLL.Add(bookInfoModel);
                }
                //关闭ymPrompt窗口 并刷新列表页面
                MyBase.ClosePopWinAndRefreshPage();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        #region 参考Excel导入导出方法
        protected void btn_read_03_click(object o, EventArgs e)
        {
            var dt = ExcelHelper.GetDataTable(Server.MapPath("~/xls_tmp/2003.xls"));
            g1.DataSource = dt;
            g1.DataBind();
        }
        protected void btn_read_07_click(object o, EventArgs e)
        {
            var dt = ExcelHelper.GetDataTable(Server.MapPath("~/xls_tmp/2007.xlsx"));
            g1.DataSource = dt;
            g1.DataBind();
        }
        protected void btn_import_03_click(object o, EventArgs e)
        {
            var name = DateTime.Now.ToString("yyyyMMddhhmmss") + new Random(DateTime.Now.Second).Next(10000);
            var path = Server.MapPath("~/xls_down/" + name + ".xls");
            var dt = new System.Data.DataTable();
            var Columns = Enumerable.Range(1, 10).Select(d => new DataColumn("a" + d.ToString(), typeof(string))).ToArray();
            dt.Columns.AddRange(Columns);
            for (int i = 0; i < 33333; i++)
            {
                var id = Guid.NewGuid().ToString();
                dt.Rows.Add(id, id, id, id, id, id, id, id, id, id);
            }
            ExcelHelper.x2003.TableToExcelForXLS(dt, path);
            downloadfile(path);
        }
        protected void btn_import_07_click(object o, EventArgs e)
        {
            var name = DateTime.Now.ToString("yyyyMMddhhmmss") + new Random(DateTime.Now.Second).Next(10000);
            var path = Server.MapPath("~/xls_down/" + name + ".xlsx");
            var dt = new System.Data.DataTable();
            var Columns = Enumerable.Range(1, 10).Select(d => new DataColumn("a" + d.ToString(), typeof(string))).ToArray();
            dt.Columns.AddRange(Columns);
            for (int i = 0; i < 33333; i++)
            {
                var id = Guid.NewGuid().ToString();
                dt.Rows.Add(id, id, id, id, id, id, id, id, id, id);
            }
            ExcelHelper.x2007.TableToExcelForXLSX(dt, path);
            downloadfile(path);
        }
        void downloadfile(string s_path)
        {
            System.IO.FileInfo file = new System.IO.FileInfo(s_path);
            HttpContext.Current.Response.ContentType = "application/ms-download";
            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.AddHeader("Content-Type", "application/octet-stream");
            HttpContext.Current.Response.Charset = "utf-8";
            HttpContext.Current.Response.AddHeader("Content-Disposition", "attachment;filename=" + System.Web.HttpUtility.UrlEncode(file.Name, System.Text.Encoding.UTF8));
            HttpContext.Current.Response.AddHeader("Content-Length", file.Length.ToString());
            HttpContext.Current.Response.WriteFile(file.FullName);
            HttpContext.Current.Response.Flush();
            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.End();
        }
        #endregion
    }
}