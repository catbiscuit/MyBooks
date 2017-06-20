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
    /// 图书借阅统计
    /// </summary>
    public partial class BookBorrowStat : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);
        //创建bookInfoBLL 对象
        private tb_book_info bookInfoBLL = new tb_book_info();
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
            //定义两个接收时间的字符串
            string strBegin = null;
            string strEnd = null;
            //判断开始时间是否为空
            if (beginDate.Value.Length > 0)
            {
                strBegin = Convert.ToDateTime(beginDate.Value.Trim()).ToString("yyyy-MM-dd");
            }
            else
            {
                strBegin = "";
            }
            //判断结束时间是否为空
            if (endDate.Value.Length > 0)
            {
                strEnd = Convert.ToDateTime(endDate.Value.Trim()).ToString("yyyy-MM-dd");
            }
            else
            {
                strEnd = DateTime.Now.AddDays(1).ToString("yyyy-MM-dd");
            }
            //读取属性值
            string orderBy = ddlOrderBy.SelectedValue;

            int recordCount;
            DataSet ds = bookInfoBLL.MySPGetBorrowList(strBegin,strEnd, orderBy, Pager.PageSize, Pager.CurrentPageIndex,out recordCount);           

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

        protected void Pager_PageChanged(object sender, EventArgs e)
        {
            DataBindToRepeater();
        }
    }
}