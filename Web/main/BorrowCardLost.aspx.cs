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
    /// 借阅卡挂失管理
    /// </summary>
    public partial class BorrowCardLost : System.Web.UI.Page
    {

        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);

        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        tb_borrow_card borrowCardBLL = new tb_borrow_card();
        tb_borrowCard_Lost borrowCardLostBLL = new tb_borrowCard_Lost();
        web.Model.tb_borrowCard_Lost borrowCardLostModel = null;
        web.Model.tb_borrow_card cardModel = null;
        web.Model.tb_borrower_info borrowerInfoModel = null;
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
        /// 表格操作
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string cardId = null;
            switch (e.CommandName)
            {
                case "Lose": cardId = e.CommandArgument.ToString(); BorrowCardLose(cardId); break;
                case "Find": cardId = e.CommandArgument.ToString(); BorrowCardFind(cardId); break;
            }
            this.DataBindToRepeater();
        }

        /// <summary>
        /// 借阅卡挂失操作
        /// </summary>
        /// <param name="cardId"></param>
        private void BorrowCardLose(string cardId)
        {
            cardModel = borrowCardBLL.GetModel(cardId);
            if (cardModel.lose == true)
            {
                cardModel.lose = false;
                borrowCardBLL.Update(cardModel);

                //获取读者信息
                borrowerInfoModel = borrowerInfoBLL.MyDataRowToModel(borrowerInfoBLL.GetList("card_id='" + cardModel.id + "'").Tables[0].Rows[0]);

                //创建丢失记录
                borrowCardLostModel = new web.Model.tb_borrowCard_Lost();
                borrowCardLostModel.borrow_card_id = cardModel.id;
                borrowCardLostModel.borrow_gender = borrowerInfoModel.gender;
                borrowCardLostModel.borrow_id = borrowerInfoModel.id;
                borrowCardLostModel.borrow_name = borrowerInfoModel.name;
                borrowCardLostModel.lost_date = DateTime.Now;
                borrowCardLostModel.operater = Session["una"].ToString();
                borrowCardLostBLL.Add(borrowCardLostModel);
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert(\"挂失失败，该借阅卡已经处于挂失状态\")</script>");
            }
        }

        /// <summary>
        /// 借阅卡解挂操作
        /// </summary>
        /// <param name="cardId"></param>
        private void BorrowCardFind(string cardId)
        {
            cardModel = borrowCardBLL.GetModel(cardId);
            if (cardModel.lose == false)
            {
                cardModel.lose = true;
                borrowCardBLL.Update(cardModel);

                //获取读者信息
                borrowerInfoModel = borrowerInfoBLL.MyDataRowToModel(borrowerInfoBLL.GetList("card_id='" + cardModel.id + "'").Tables[0].Rows[0]);
                //获取丢失记录
                borrowCardLostModel = borrowCardLostBLL.MyDataRowToModel(borrowCardLostBLL.GetList("borrow_card_id='" + cardModel.id + "' order by id desc ").Tables[0].Rows[0]);
                //修改丢失记录中的解除时间
                borrowCardLostModel.relieve_date = DateTime.Now;
                borrowCardLostBLL.Update(borrowCardLostModel);
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert(\"解挂失败，该借阅卡已经处于正常状态\")</script>");
            }
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

        /// <summary>
        /// 刷新按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void nlbtRefresh_Click(object sender, EventArgs e)
        {
            this.DataBindToRepeater();
        }
    }
}