using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web.main
{
    /// <summary>
    /// 读者信息修改
    /// </summary>
    public partial class BorrowerUpdate : System.Web.UI.Page
    {
        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        tb_borrow_card borrowCardBLL = new tb_borrow_card();

        web.Model.tb_borrower_info borrowerInfoModel = null;
        web.Model.tb_borrow_card borrowCardModel = null;
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
            //实例化对象
            borrowerInfoModel = new web.Model.tb_borrower_info();
            borrowCardModel = new web.Model.tb_borrow_card();
            //读者对象赋值
            borrowerInfoModel = borrowerInfoBLL.GetModel(id);
            //读者借阅卡对象赋值
            borrowCardModel = borrowCardBLL.MyDataRowToModel(borrowCardBLL.GetList(" id=\'" + borrowerInfoModel.card_id + "\'").Tables[0].Rows[0]);

            //将书籍的属性赋值到控件上
            txtId.Text = id;
            txtName.Text = borrowerInfoModel.name;
            if (borrowerInfoModel.gender)
            {
                ddlGender.SelectedIndex = 0;
            }
            else
            {
                ddlGender.SelectedIndex = 1;
            }
            txtGrade.Text = borrowerInfoModel.grade;
            txtBorrowId.Text = borrowerInfoModel.card_id;
            endDate.Value = borrowCardModel.valid_time.ToString();
            txtICCard.Text = borrowCardModel.ic_card;
            txtPhone.Text = borrowCardModel.phone;
        }

        /// <summary>
        /// 更新按钮点击时
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //实例化对象
            borrowerInfoModel = new web.Model.tb_borrower_info();
            borrowCardModel = new web.Model.tb_borrow_card();

            string txtid = txtId.Text;
            if (txtid == null || txtid == "")
            {
                return;
            }
            //读者对象赋值
            borrowerInfoModel = borrowerInfoBLL.GetModel(txtid);
            //读者借阅卡对象赋值
            borrowCardModel = borrowCardBLL.MyDataRowToModel(borrowCardBLL.GetList(" id=\'" + borrowerInfoModel.card_id + "\'").Tables[0].Rows[0]);

            borrowerInfoModel.name = txtName.Text.Trim();
            if (ddlGender.SelectedIndex == 0)
            {
                borrowerInfoModel.gender = true;
            }
            else
            {
                borrowerInfoModel.gender = false;
            }
            borrowerInfoModel.grade = txtGrade.Text.Trim();

            borrowCardModel.valid_time = Convert.ToDateTime(endDate.Value);
            borrowCardModel.ic_card = txtICCard.Text.Trim();
            borrowCardModel.phone = txtPhone.Text.Trim();

            borrowerInfoBLL.Update(borrowerInfoModel);
            borrowCardBLL.Update(borrowCardModel);            

            ////关闭ymPrompt窗口 并刷新列表页面
            MyBase.ClosePopWinAndRefreshPage();
        }
    }
}