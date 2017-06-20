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
    /// 读者列表
    /// </summary>
    public partial class BorrowerList : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);

        tb_borrower_info borrowerInfoBLL = new tb_borrower_info();
        tb_book_info bookInfoBLL = new tb_book_info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Pager.PageSize = intPage;
                this.DataBindToRepeater();
            }
        }

        private void DataBindToRepeater()
        {
            string strSql = "tb_borrow_card.id as cardid,tb_borrow_card.handle_time,tb_borrow_card.valid_time,tb_borrow_card.ic_card,tb_borrow_card.phone,tb_borrow_card.status,tb_borrower_info.id as borrowerid,tb_borrower_info.name,tb_borrower_info.gender,tb_borrower_info.grade from  tb_borrow_card full outer join  tb_borrower_info on tb_borrow_card.id = tb_borrower_info.card_id";
            //创建dic词典对象
            Dictionary<string, object> dic = new Dictionary<string, object>();
            //读取属性值
            string name = txtName.Text;
            string id = txtCardId.Text;            
            //将值添加到dic中
            dic.Add("tb_borrower_info.name", name);
            dic.Add("tb_borrow_card.id", id);            
            //拼接字符串
            string sqlWhere = MyBase.WhereParamAnd(dic);

            int recordCount;
            DataSet ds = bookInfoBLL.MyBaseListByPage(Pager.PageSize, Pager.CurrentPageIndex, "tb_borrow_card.id desc", sqlWhere, strSql, out recordCount);
            //DataSet ds = bookInfoBLL.MyGetListByPage(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere, out recordCount);

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
        protected void btnList_Click(object sender, EventArgs e)
        {
            Pager.CurrentPageIndex = 1;
            DataBindToRepeater();
        }

        protected void Pager_PageChanged(object sender, EventArgs e)
        {
            DataBindToRepeater();
        }

        protected void nlbtRefresh_Click(object sender, EventArgs e)
        {
            this.DataBindToRepeater();
        }
    }
}