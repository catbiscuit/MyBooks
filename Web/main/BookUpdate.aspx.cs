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
    /// 书本信息更新
    /// </summary>
    public partial class BookUpdate : System.Web.UI.Page
    {
        tb_book_info bookInfoBLL = new tb_book_info();
        tb_book_type bookTypeBLL = new tb_book_type();
        tb_images imagesBLL = new tb_images();
        web.Model.tb_book_info bookInfoModel;
        web.Model.tb_book_type bookTypeModel;
        web.Model.tb_images imagesModel;

        //获取web.config中设置的分页
        string ImgUrl = System.Configuration.ConfigurationManager.AppSettings["MyUrl"];

        /// <summary>
        /// 页面载入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //回调 防止页面刷新无法获得修改后的值。
            //之前没有添加该判断。导致获取的textbox.text的值是从数据库传递出来的，而不是页面上修改后的数值。
            if (!IsPostBack)
            {
                this.RepeaterDataBind();
            }
        }

        protected void RepeaterDataBind()
        {
            //使用QueryString接受 传递过来的key的值
            string id = Request.QueryString["key"];
            bookInfoModel = new web.Model.tb_book_info();
            bookTypeModel = new web.Model.tb_book_type();
            //实例化对象
            bookInfoModel = bookInfoBLL.GetModel(id);

            bookTypeModel = bookTypeBLL.MyDataRowToModel(bookTypeBLL.GetList(" no=\'" + bookInfoModel.type + "\'").Tables[0].Rows[0]);
            //将书籍的属性赋值到控件上
            txtId.Text = id;
            txtName.Text = bookInfoModel.name;
            txtAuthor.Text = bookInfoModel.author;
            txtISBN.Text = bookInfoModel.ISBN;
            txtPulisher.Text = bookInfoModel.publisher;
            txtLanguage.Text = bookInfoModel.language;
            txtPrice.Text = bookInfoModel.price.ToString();
            txtType.Text = bookInfoModel.type;
            txtTypeName.Text = bookTypeModel.name;

            DataSet ds = imagesBLL.GetList("foreign_id='" + txtId.Text.Trim() + "'");

            if (ds.Tables[0].Rows.Count > 0)
            {
                Image1.ImageUrl = ImgUrl + "/imgupload/" + ds.Tables[0].Rows[0]["src"].ToString();
            }
            else
            {
                Image1.ImageUrl = ImgUrl + "/imgupload/" + "index.jpg";
            }

        }
        /// <summary>
        /// 更新按钮点击时
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string txtid = txtId.Text;
            if (txtid == null || txtid == "")
            {
                return;
            }
            //实例化对象
            bookInfoModel = new web.Model.tb_book_info();
            bookInfoModel = bookInfoBLL.GetModel(txtid);
            //将控件的值赋值到对象属性
            bookInfoModel.name = txtName.Text.Trim();
            bookInfoModel.author = txtAuthor.Text.Trim();
            bookInfoModel.ISBN = txtISBN.Text.Trim();
            bookInfoModel.publisher = txtPulisher.Text.Trim();
            bookInfoModel.language = txtLanguage.Text.Trim();
            if (txtPrice.Text != null && txtPrice.Text != "")
            {
                bookInfoModel.price = decimal.Parse(txtPrice.Text.Trim());
            }
            bookInfoModel.type = txtType.Text.Trim();
            bookInfoBLL.Update(bookInfoModel);

            //关闭ymPrompt窗口 并刷新列表页面
            MyBase.ClosePopWinAndRefreshPage();
        }

        protected void btnImg_Click(object sender, EventArgs e)
        {
            try
            {
                //获取传文件的名字
                string fileName = FileId.FileName;
                //判断upload文件夹是否存在，不存在则创建
                if (Directory.Exists(Server.MapPath("~/imgupload")) == false)
                {
                    Directory.CreateDirectory(Server.MapPath("~/imgupload"));
                }
                //获取服务器路径地址
                string savePath = Server.MapPath("~/imgupload/");
                //设置上传到服务器端的文件名称
                string strFileName = DateTime.Now.ToString("yyyyMMddHHmmss") + new Random(DateTime.Now.Second).Next(10000) + fileName.Substring(fileName.LastIndexOf('.'));
                FileId.SaveAs(savePath + strFileName);

                //将图片展示出来
                Image1.ImageUrl = ImgUrl+"/imgupload/" + strFileName;

                //创建图片关联
                DataSet ds= imagesBLL.GetList("foreign_id='"+ txtId.Text.Trim()+"'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        imagesBLL.Delete(Convert.ToInt16(ds.Tables[0].Rows[i]["id"]));
                    }
                    imagesModel = new web.Model.tb_images();
                    imagesModel.src = strFileName;
                    imagesModel.foreign_id = txtId.Text.Trim();
                    imagesModel.upload_date = DateTime.Now;

                    imagesBLL.Add(imagesModel);
                }
                else
                {
                    imagesModel = new web.Model.tb_images();
                    imagesModel.src = strFileName;
                    imagesModel.foreign_id = txtId.Text.Trim();
                    imagesModel.upload_date = DateTime.Now;

                    imagesBLL.Add(imagesModel);
                }

                Response.Write("<script type='text/javascript'>alert('图片上传成功！')</script>");
            }
            catch (Exception ex)
            {
                LogHelper.WriteLog(ex.ToString(), ex);
                Response.Write("<script type='text/javascript'>alert(\"文件上传失败:" + ex.ToString() + "\")</script>");
            }
        }
    }
}