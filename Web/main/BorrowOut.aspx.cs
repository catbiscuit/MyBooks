using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web.main
{
    /// <summary>
    /// 图书借阅登记
    /// </summary>
    public partial class BorrowOut : System.Web.UI.Page
    {
        //引用BLL
        tb_book_borrow bookBorrowBLL = new tb_book_borrow();
        tb_borrow_card bookCardBLL = new tb_borrow_card();
        tb_book_info bookInfoBLL = new tb_book_info();
        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        //创建Model
        web.Model.tb_book_borrow borrow = null;
        web.Model.tb_borrow_card card = null;
        web.Model.tb_book_info book = null;
        web.Model.tb_borrower_info borrower = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = null;
                this.Repeater1.DataSource = dt;
                this.Repeater1.DataBind();
            }
        }

        /// <summary>
        /// 点击添加按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            bool ok = true;
            string msg = "";
            try
            {

                string bookid = txtBookId.Text;
                string cardid = txtCardId.Text;
                if (bookid == null || bookid == "")
                {
                    ok = false;
                    msg = "<script type='text/javascript'>alert(\"书本id不能为空\")</script>";
                }
                else if (cardid == null || cardid == "")
                {
                    ok = false;
                    msg = "<script type='text/javascript'>alert(\"借阅卡id不能为空\")</script>";
                }
                if (ok)
                {
                    card = bookCardBLL.GetModel(txtCardId.Text);
                    //借阅卡：已借。现在不能借书。
                    if (card.status == false)
                    {
                        Response.Write("<script type='text/javascript'>alert(\"对不起，您不能借书，因为您还有书没有还\")</script>");
                    }
                    //借阅卡：停借。现在不能借书
                    else if (card.stop == false)
                    {
                        Response.Write("<script type='text/javascript'>alert(\"对不起，您不能借书，因为您的借阅卡处于停借状态，请联系管理员。\")</script>");
                    }
                    //借阅卡：挂失。现在不能借书。
                    else if (card.lose == false)
                    {
                        Response.Write("<script type='text/javascript'>alert(\"对不起，您不能借书，因为您的借阅卡处于挂失状态，请联系管理员。\")</script>");
                    }
                    //正常状态，可以借书。
                    else
                    {
                        //添加图书借阅记录
                        borrow = new web.Model.tb_book_borrow();
                        borrow.id = Guid.NewGuid().ToString();
                        borrow.book_id = txtBookId.Text;
                        borrow.borrow_id = txtCardId.Text;
                        borrow.out_time = DateTime.Today;
                        borrow.in_time = DateTime.Today.AddDays(60);
                        bookBorrowBLL.Add(borrow);
                        //修改借阅卡的状态                
                        card.status = false;
                        bookCardBLL.Update(card);
                        //修改书籍的状态为false（即为不可以借阅）
                        book = bookInfoBLL.GetModel(txtBookId.Text);
                        book.status = false;
                        bookInfoBLL.Update(book);

                        Response.Write("<script type='text/javascript'>alert(\"借阅成功\")</script>");
                        txtBookId.Text = "";
                        txtCardId.Text = "";

                        //清空数据
                        txtBookAuthor.Text = "";
                        txtBookName.Text = "";
                        txtBookPulisher.Text = "";
                        txtReaderGender.Text = "";
                        txtReaderName.Text = "";
                        txtReaderPartment.Text = "";
                    }
                }
                else
                {
                    Response.Write(msg);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script type='text/javascript'>alert(\"系统错误:" + ex.ToString() + "\")</script>");
            }
        }

        /// <summary>
        /// 显示读者信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLoadReader_Click(object sender, EventArgs e)
        {
            string cardid = txtCardId.Text;
            //后台再次确认书本id是否输入
            if (cardid == null || cardid == "")
            {
                Response.Write("<script type='text/javascript'>alert(\"借阅卡id不能为空\")</script>");
                return;
            }
            //已经输入
            else
            {
                try
                {
                    //获取借阅卡的 实体对象
                    card = bookCardBLL.GetModel(cardid);
                    if (card != null)
                    {
                        //根据借阅卡的id，获取到读者的对象
                        borrower = borrowerInfoBLL.GetModel(borrowerInfoBLL.GetList(" card_id='" + card.id + "'").Tables[0].Rows[0]["id"].ToString());
                        //在界面上显示读者的基本信息
                        txtReaderName.Text = borrower.name;
                        if (borrower.gender)
                        {
                            txtReaderGender.Text = "男";
                        }
                        else
                        {
                            txtReaderGender.Text = "女";
                        }
                        txtReaderPartment.Text = borrower.grade;

                        //获取读者的借阅记录
                        this.DataBindToRepeater(cardid);

                    }
                    //没有找到借阅卡的对象
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert(\"借阅卡的信息未找到，请重新确认。\")</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
        }

        /// <summary>
        /// 显示书籍信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLoadBook_Click(object sender, EventArgs e)
        {
            string bookid = txtBookId.Text;
            if (bookid == "" || bookid == null)
            {
                Response.Write("<script type='text/javascript'>alert(\"书本id不能为空\")</script>");
                return;
            }
            else
            {
                try
                {
                    book = bookInfoBLL.GetModel(bookid);
                    if (book != null)
                    {
                        txtBookName.Text = book.name;
                        txtBookAuthor.Text = book.author;
                        txtBookPulisher.Text = book.publisher;
                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert(\"书本的信息未找到，请重新确认。\")</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
        }

        /// <summary>
        /// 绑定数据到Repeater
        /// </summary>
        /// <param name="cardid"></param>
        private void DataBindToRepeater(string cardid)
        {
            StringBuilder sbWhere = new StringBuilder();
            sbWhere.Append("select tb_book_borrow.out_time,tb_book_borrow.in_time,tb_book_info.name,tb_book_info.ISBN,tb_book_info.price from ");
            sbWhere.Append("( tb_book_info inner join tb_book_borrow on tb_book_borrow.book_id=tb_book_info.id) inner join tb_borrow_card on ");
            sbWhere.AppendFormat("tb_book_borrow.borrow_id=tb_borrow_card.id where tb_borrow_card.id='{0}'", cardid);
            DataSet ds = borrowerInfoBLL.GetListBySql(sbWhere.ToString());

            this.Repeater1.DataSource = ds.Tables[0];
            this.Repeater1.DataBind();
        }
    }
}