using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.Common;
using web.BLL;
using System.Data;

namespace Web.main
{
    public partial class BookLostRegister : System.Web.UI.Page
    {
        //引用BLL
        tb_book_borrow bookBorrowBLL = new tb_book_borrow();
        tb_borrow_card bookCardBLL = new tb_borrow_card();
        tb_book_info bookInfoBLL = new tb_book_info();
        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        tb_book_lost bookLostBLL = new tb_book_lost();
        //创建Model
        web.Model.tb_borrow_card card = null;
        web.Model.tb_book_info book = null;
        web.Model.tb_borrower_info borrower = null;
        web.Model.tb_book_borrow bookBorrowModel = null;
        web.Model.tb_book_lost bookLostModel = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 选择读者信息和图书信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLoadReader_Click(object sender, EventArgs e)
        {
            string cardid = txtCardId.Text.Trim();
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

                        DataSet ds= bookBorrowBLL.GetList("borrow_id=\'"+cardid+"' order by out_time desc");
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            bookBorrowModel = bookBorrowBLL.MyDataRowToModel(ds.Tables[0].Rows[0]);
                            if ((bookBorrowModel.reality_time.ToString() != null || bookBorrowModel.reality_time.ToString() != "")&&(card.status==false))
                            {
                                book = bookInfoBLL.GetModel(bookBorrowModel.book_id);
                                txtBookId.Text = book.id;
                                txtBookName.Text = book.name;
                                txtBookAuthor.Text = book.author;
                                txtBookPulisher.Text = book.publisher;

                                txtBookPrice.Text = book.price.ToString();
                            }
                            else
                            {
                                Response.Write("<script type='text/javascript'>alert(\"借阅图书信息未找到，请重新确认！\")</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script type='text/javascript'>alert(\"借阅图书信息未找到，请重新确认！\")</script>");
                        }
                    }
                    //没有找到借阅卡的对象
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert(\"借阅卡的信息未找到，请重新确认。\")</script>");
                    }
                }
                catch (Exception ex)
                {
                    LogHelper.WriteLog(ex.ToString());
                }
            }
        }

        /// <summary>
        /// 提交登记记录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtCardId.Text.Trim() == null || txtBookId.Text.Trim() == "")
                {
                    Response.Write("<script type='text/javascript'>alert(\"请选输入借阅卡Id，获取信息再进行操作！\")</script>");
                    return;
                }
                else
                {
                    //读取值
                    string cardid = txtCardId.Text.Trim();
                    string bookid = txtBookId.Text.Trim();
                    //实例化对象
                    book = bookInfoBLL.GetModel(bookid);
                    card = bookCardBLL.GetModel(cardid);
                    //添加图书丢失处理记录
                    bookLostModel = new web.Model.tb_book_lost();
                    bookLostModel.borrow_id = txtCardId.Text.Trim();
                    bookLostModel.borrow_name = txtReaderName.Text.Trim();
                    bookLostModel.book_id = book.id;
                    bookLostModel.book_ISBN = book.ISBN;
                    bookLostModel.book_name = book.name;
                    bookLostModel.book_publisher = book.publisher;
                    bookLostModel.book_author = book.author;
                    bookLostModel.book_price = book.price;
                    bookLostModel.submit_date = DateTime.Now;
                    //判断实际赔偿金是否填写
                    if (txtFineMoney.Text == null || txtFineMoney.Text == "")
                    {
                        Response.Write("<script type='text/javascript'>alert(\"实际赔偿金额未填，请输入!\")</script>");
                        return;
                    }
                    else
                    {
                        bookLostModel.fine_money = Convert.ToDecimal(txtFineMoney.Text.Trim());
                    }
                    bookLostModel.manager = Session["una"].ToString();
                    bookLostBLL.Add(bookLostModel);

                    //修改借阅卡的 借阅状态
                    card.status = true;
                    bookCardBLL.Update(card);

                    //修改图书的 丢失状态
                    book.lost = true;
                    bookInfoBLL.Update(book);

                    //弹出提示窗
                    Response.Write("<script type='text/javascript'>alert(\"处理完成！\")</script>");

                    //将textbox的值清空
                    txtBookAuthor.Text = "";
                    txtBookId.Text = "";
                    txtBookName.Text = "";
                    txtBookPrice.Text = "";
                    txtBookPulisher.Text = "";
                    txtCardId.Text = "";
                    txtFineMoney.Text = "";
                    txtReaderGender.Text = "";
                    txtReaderName.Text = "";
                    txtReaderPartment.Text = "";
                    
                                       
                }
            }
            catch(Exception ex)
            {
                LogHelper.WriteLog(ex.ToString());
            }
        }
    }
}