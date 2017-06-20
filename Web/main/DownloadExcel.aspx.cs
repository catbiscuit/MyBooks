using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;
using web.Common;

namespace Web.main
{
    /// <summary>
    /// 下载excel
    /// </summary>
    public partial class DownloadExcel : System.Web.UI.Page
    {
        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        tb_book_info bookInfoBLL = new tb_book_info();
        tb_down_record downRecordBLL = new tb_down_record();

        web.Model.tb_down_record downrecord;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.DataBindTo();
            }
            
        }

        private void DataBindTo()
        {
            try
            {
                //使用QueryString接受 传递过来的key的值
                string name = Request.QueryString["name"];
                if (name == "null")
                {
                    name = null;
                }
                string id = Request.QueryString["cardid"];
                if (id == "null")
                {
                    id = null;
                }
                string strSql = "tb_borrow_card.id as cardid,tb_borrow_card.handle_time,tb_borrow_card.valid_time,tb_borrow_card.ic_card,tb_borrow_card.phone,tb_borrow_card.status,tb_borrower_info.id as borrowerid,tb_borrower_info.name,tb_borrower_info.gender,tb_borrower_info.grade from  tb_borrow_card full outer join  tb_borrower_info on tb_borrow_card.id = tb_borrower_info.card_id";
                //创建dic词典对象
                Dictionary<string, object> dic = new Dictionary<string, object>();
                //将值添加到dic中
                dic.Add("tb_borrower_info.name", name);
                dic.Add("tb_borrow_card.id", id);
                //拼接字符串
                string sqlWhere = MyBase.WhereParamAnd(dic);

                DataSet ds = bookInfoBLL.MyBaseList("tb_borrow_card.id desc", sqlWhere, strSql);
                g1.DataSource = ds.Tables[0];
                g1.DataBind();

                #region 将DataTable转换为.xls格式的excel表格保存到服务器
                //判断upload文件夹是否存在，不存在则创建
                if (Directory.Exists(Server.MapPath("~/exceldown")) == false)
                {
                    Directory.CreateDirectory(Server.MapPath("~/exceldown"));
                }
                string filename= DateTime.Now.ToString("yyyyMMddHHmmss") + new Random(DateTime.Now.Second).Next(10000);
                string path = Server.MapPath("~/exceldown/" + filename + ".xls");
                ExcelHelper.x2003.TableToExcelForXLS(ds.Tables[0],path);
                #endregion

                downrecord = new web.Model.tb_down_record();
                downrecord.down_time = DateTime.Now;
                downrecord.file_name = filename;
                downRecordBLL.Add(downrecord);
            }
            catch(Exception ex)
            {
                LogHelper.WriteLog(ex.ToString(),ex);
                Response.Write(ex.ToString());
            }
        }

        /// <summary>
        /// 点击下载按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDown_Click(object sender, EventArgs e)
        {
            try
            {
                //获取最新的一条记录
                downrecord = downRecordBLL.MyGetLastModel();
                //下载文件
                downloadfile(Server.MapPath("~/exceldown/" + downrecord.file_name.Trim() + ".xls"));
                //修改下载记录的对象，id_down属性为真，即已经被下载。
                downrecord.is_down = true;
                downRecordBLL.Update(downrecord);
            }
            catch(Exception ex)
            {
                LogHelper.WriteLog(ex.ToString(),ex);
            }
        }

        /// <summary>
        /// 下载文件
        /// </summary>
        /// <param name="s_path"></param>
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
            //此语句执行后 后面的代码就不会被执行。
            //比如调用该方法的后面还有downrecord这个记录要被更新，但是因为执行了这个语句却没有被执行。
            //此处屏蔽该语句。
            //查看Log日志中记录的Exception的信息，显示HttpContext.Current.Response.End()这条语句正在停止进程，也就是不会再执行后面的代码。
            //HttpContext.Current.Response.End();
        }
    }
}