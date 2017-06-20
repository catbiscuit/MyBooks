using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;
using web.Common;

namespace Web.main
{
    /// <summary>
    /// 新书入库
    /// </summary>
    public partial class BookAdd : System.Web.UI.Page
    {
        tb_book_info bookInfoBLL = new tb_book_info();
        web.Model.tb_book_info bookInfoModel;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    btnAdd.Attributes.Add("OnClick", "return btnAddCheck()");
            //}
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            bool ok = true;
            string msg = "";
            try
            {
                string name = txtName.Text.Trim();
                string author = txtAuthor.Text.Trim();
                string ISBN = txtISBN.Text.Trim();
                string pulisher = txtPulisher.Text.Trim();
                string language = txtLanguage.Text.Trim();
                string price = txtPrice.Text.Trim();
                string type = txtType.Text.Trim();

                if (name == "" || name == null)
                {
                    msg = "<script type='text/javascript'>alert(\"书名不能为空\")</script>";
                    ok = false;
                }
                else if (author == "" || author == null)
                {
                    msg = "<script type='text/javascript'>alert(\"作者不能为空\")</script>";
                    ok = false;
                }
                else if (ISBN == "" || ISBN == null)
                {
                    msg = "<script type='text/javascript'>alert(\"ISBN不能为空\")</script>";
                    ok = false;
                }
                else if (pulisher == "" || pulisher == null)
                {
                    msg = "<script type='text/javascript'>alert(\"出版社不能为空\")</script>";
                    ok = false;
                }
                else if (price == "" || price == null)
                {
                    msg = "<script type='text/javascript'>alert(\"价格不能为空\")</script>";
                    ok = false;
                }
                if (ok)
                {
                    //实例化图书Model
                    bookInfoModel = new web.Model.tb_book_info();
                    bookInfoModel.id = Guid.NewGuid().ToString();
                    bookInfoModel.name = name;
                    bookInfoModel.spell = strToPinyin.GetChineseSpell(name);
                    bookInfoModel.author = author;
                    bookInfoModel.ISBN = ISBN;
                    bookInfoModel.publisher = pulisher;
                    bookInfoModel.language = language;
                    bookInfoModel.putin_time = DateTime.Now;
                    bookInfoModel.status = true;
                    bookInfoModel.price = decimal.Parse(price);
                    bookInfoModel.type = type;
                    //添加到数据库
                    bookInfoBLL.Add(bookInfoModel);

                    //刷新图书页面
                    txtName.Text = "";
                    txtAuthor.Text = "";
                    txtISBN.Text = "";
                    txtPulisher.Text = "";
                    txtLanguage.Text = "";
                    txtPrice.Text = "";
                    txtType.Text = "";
                    txtTypeName.Text = "";

                    Response.Write("<script type='text/javascript'>alert(\"添加成功，请到图书列表查看\")</script>");
                    //重新载入到列表页面
                    //Response.Redirect("BookList.aspx");
                }
                else
                {
                    Response.Write(msg);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}