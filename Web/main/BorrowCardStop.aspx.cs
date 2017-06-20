using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web.main
{
    /// <summary>
    /// 借阅卡停借管理
    /// </summary>
    public partial class BorrowCardStop : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);

        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        tb_borrow_card borrowCardBLL = new tb_borrow_card();
        tb_borrowCard_stop borrowCardStopBLL = new tb_borrowCard_stop();
        web.Model.tb_borrow_card cardModel = null;
        web.Model.tb_borrower_info borrowerInfoModel = null;
        web.Model.tb_borrowCard_stop borrowCardStopModel = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Pager.PageSize = intPage;
                this.DataBindToRepeater();
            }
        }

        /// <summary>
        /// 基础数据绑定到Repeater
        /// </summary>
        private void DataBindToRepeater()
        {
            //创建dic词典对象
            Dictionary<string, object> dic = new Dictionary<string, object>();

            //读取属性值
            string name = txtName.Text;
            string id = txtCardId.Text;

            dic.Add("tb_borrower_info.name", name);
            dic.Add("tb_borrow_card.id", id);

            string sqlWhere = MyBase.WhereParamAnd(dic);

            int recordCount;
            DataSet ds = borrowerInfoBLL.MyGetBorrowerInfoPageList(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere, out recordCount);
            this.Repeater1.DataSource = ds.Tables[0];
            this.Repeater1.DataBind();

            Pager.RecordCount = recordCount;
            Pager.CustomInfoHTML = MyBase.SetPagerStyle(Pager.CurrentPageIndex, Pager.PageCount, ds.Tables[0].Rows.Count, recordCount);
        }

        /// <summary>
        /// 点击查询按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void nlbtList_Click(object sender, EventArgs e)
        {
            Pager.CurrentPageIndex = 1;
            DataBindToRepeater();
        }

        /// <summary>
        /// 页面发生改变
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Pager_PageChanged(object sender, EventArgs e)
        {
            DataBindToRepeater();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string cardId = null;
            switch (e.CommandName)
            {
                case "Stop": cardId = e.CommandArgument.ToString(); BorrowCardStoped(cardId); break;
                case "Allow": cardId = e.CommandArgument.ToString(); BorrowCardAllow(cardId); break;
            }
            this.DataBindToRepeater();
        }

        /// <summary>
        /// 借阅卡停借
        /// </summary>
        /// <param name="cardId"></param>
        private void BorrowCardStoped(string cardId)
        {
            cardModel = borrowCardBLL.GetModel(cardId);
            if (cardModel.stop == true)
            {
                //将借阅卡的状态修改
                cardModel.stop = false;
                borrowCardBLL.Update(cardModel);
                //获取读者信息
                borrowerInfoModel = borrowerInfoBLL.MyDataRowToModel(borrowerInfoBLL.GetList("card_id='"+cardModel.id+"'").Tables[0].Rows[0]);
                //创建停借记录
                borrowCardStopModel = new web.Model.tb_borrowCard_stop();
                borrowCardStopModel.borrow_card_id = cardModel.id;
                borrowCardStopModel.borrow_gender = borrowerInfoModel.gender;
                borrowCardStopModel.borrow_id = borrowerInfoModel.id;
                borrowCardStopModel.borrow_name = borrowerInfoModel.name;
                borrowCardStopModel.stop_date = DateTime.Now;
                borrowCardStopModel.operater= Session["una"].ToString();
                borrowCardStopBLL.Add(borrowCardStopModel);
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert(\"停借失败，该借阅卡已经处于停借状态\")</script>");
            }
        }
        /// <summary>
        /// 借阅卡解除停借
        /// </summary>
        /// <param name="cardId"></param>
        private void BorrowCardAllow(string cardId)
        {
            cardModel = borrowCardBLL.GetModel(cardId);
            if (cardModel.stop == false)
            {
                cardModel.stop = true;
                borrowCardBLL.Update(cardModel);

                //获取读者信息
                borrowerInfoModel = borrowerInfoBLL.MyDataRowToModel(borrowerInfoBLL.GetList("card_id='" + cardModel.id + "'").Tables[0].Rows[0]);
                //获取停借记录
                borrowCardStopModel= borrowCardStopBLL.MyDataRowToModel(borrowCardStopBLL.GetList("borrow_card_id='" + cardModel.id + "' order by id desc ").Tables[0].Rows[0]);
                //修改停借记录中的解停时间
                borrowCardStopModel.relieve_date = DateTime.Now;
                borrowCardStopBLL.Update(borrowCardStopModel);
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert(\"解停失败，该借阅卡已经处于正常状态\")</script>");                
            }
        }

        protected void nlbtRefresh_Click(object sender, EventArgs e)
        {
            this.DataBindToRepeater();
        }
    }
}