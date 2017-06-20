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
    /// 归还图书
    /// </summary>
    public partial class BorrowIn : System.Web.UI.Page
    {
        tb_book_info bookInfoBLL = new tb_book_info();
        tb_borrow_card borrowCardBLL = new tb_borrow_card();
        tb_book_borrow bookBorrowBLL = new tb_book_borrow();
        tb_borrow_card bookCardBLL = new tb_borrow_card();
        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();

        web.Model.tb_book_borrow borrow = null;
        web.Model.tb_borrow_card card = null;
        web.Model.tb_book_info book = null;
        web.Model.tb_borrower_info borrower = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            bool ok = true;
            string msg = "";
            //读取输入的字符串
            string bookId = txtBookId.Text;
            string cardId = txtCardId.Text;
            Dictionary<string, object> dic = new Dictionary<string, object>();
            try
            {
                //书本ID为空
                if (bookId == null || bookId == "")
                {
                    ok = false;
                    msg = "<script type='text/javascript'>alert(\"书本id不能为空\")</script>";
                }
                //借阅卡ID为空
                else if (cardId == null || cardId == "")
                {
                    ok = false;
                    msg = "<script type='text/javascript'>alert(\"借阅卡id不能为空\")</script>";
                }
                //两个都输入
                if (ok)
                {
                    //查询
                    dic.Add("book_id", bookId);
                    dic.Add("borrow_id", cardId);
                    string strWhere = MyBase.WhereParamAnd(dic);
                    DataSet ds = bookBorrowBLL.GetList(strWhere);
                    //书本和借阅卡对应，存在借阅信息
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        borrow = bookBorrowBLL.DataTableToList(ds.Tables[0])[0];
                        card = borrowCardBLL.GetModel(borrow.borrow_id);
                        //借阅卡：挂失。现在不能借书。
                        if (card.lose == false)
                        {
                            Response.Write("<script type='text/javascript'>alert(\"对不起，您不能还书，因为您的借阅卡处于挂失状态，请联系管理员。\")</script>");
                        }
                        else
                        {
                            //更新借阅信息
                            borrow.reality_time = DateTime.Today;
                            if (bookBorrowBLL.Update(borrow))
                            {
                                //将借阅卡的状态更改为1，即可以借阅图书
                                card = borrowCardBLL.GetModel(borrow.borrow_id);
                                card.status = true;
                                borrowCardBLL.Update(card);
                                //将书籍的状态修改为true，即可以被借阅
                                book = bookInfoBLL.GetModel(bookId);
                                book.status = true;
                                bookInfoBLL.Update(book);

                                Response.Write("<script type='text/javascript'>alert(\"归还成功\")</script>");
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
                            else
                            {
                                Response.Write("<script type='text/javascript'>alert(\"系统错误。\")</script>");
                            }
                        }
                    }
                    //书本与借阅卡 不对应
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert(\"归还失败。此借阅卡没有借过该书。请重新确认。\")</script>");
                    }
                }
                //某个未输入
                else
                {
                    Response.Write(msg);
                }
            }
            catch(Exception ex)
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
                Response.Write("<script type='text/javascript'>alert(\"书本id不能为空\")</script>");
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