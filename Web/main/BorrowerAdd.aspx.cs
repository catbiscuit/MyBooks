using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web.main
{

    /// <summary>
    /// 借阅卡办理
    /// </summary>
    public partial class BorrowerAdd : System.Web.UI.Page
    {
        tb_borrower_info borrowInfoBLL = new tb_borrower_info();
        tb_borrow_card borrowCardBLL = new tb_borrow_card();
        web.Model.tb_borrow_card card = null;
        web.Model.tb_borrower_info borrower = null;

        /// <summary>
        /// 页面载入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string RegICCard = "/(^\\d{15}$)|(^\\d{18}$)|(^\\d{17}(\\d|X|x)$)/";
                string RegPhone = "^1(3[0-9]|4[57]|5[0-35-9]|7[01678]|8[0-9])\\\\d{8}$";
                //string RegPhone = " /^(((1[3456789][0-9]{9})|(15[0-9]{1}))+\\d{8})$/";
                if (!Regex.IsMatch(txtICCard.Text, RegICCard))
                {
                    Response.Write("<script type='text/javascript'>alert(\"身份证填写有误,请重新输入。\")</script>");
                }
                else if (!Regex.IsMatch(txtPhone.Text, RegPhone))
                {
                    Response.Write("<script type='text/javascript'>alert(\"手机号填写有误,请重新输入。\")</script>");
                }
                else
                {
                    //判断读者的身份证是否办理过借阅卡
                    string ICCardId = txtICCard.Text;
                    string sqlStr = "select * from tb_borrow_card where ic_card='" + ICCardId + "'";
                    DataSet ds = borrowInfoBLL.GetListBySql(sqlStr);
                    //ds为null，则没有数据，即为没有办理过借阅卡
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        //实例化对象
                        borrower = new web.Model.tb_borrower_info();
                        card = new web.Model.tb_borrow_card();
                        //为借阅卡对象添加属性
                        card.id = Guid.NewGuid().ToString();
                        card.handle_time = DateTime.Today;
                        card.valid_time = DateTime.Today.AddYears(3);
                        card.ic_card = ICCardId;
                        card.phone = txtPhone.Text;
                        card.status = true;
                        card.stop = true;
                        card.lose = true;
                        //添加
                        borrowCardBLL.Add(card);
                        //为借阅人对象添加属性
                        borrower.id = Guid.NewGuid().ToString();
                        borrower.name = txtName.Text;
                        if (ddlGender.SelectedValue == "True")
                        {
                            borrower.gender = true;
                        }
                        else
                        {
                            borrower.gender = false;
                        }
                        borrower.grade = txtGrade.Text;
                        borrower.card_id = card.id;
                        //添加
                        borrowInfoBLL.Add(borrower);
                        //载入列表页
                        Response.Redirect("BorrowerList.aspx");
                    }
                    //该身份证已经办理借阅卡
                    else
                    {
                        //提示管理员添加失败
                        Response.Write("<script type='text/javascript'>alert(\"添加失败，该身份证已经注册过借阅卡\")</script>");
                    }
                }              
            }
            //捕获异常代码
            catch(Exception ex)
            {
                //打印到窗口
                Response.Write(ex.ToString());
            }
        }
    }
}