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
    public partial class BookLostList : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);

        tb_book_lost bookLostBLL = new tb_book_lost();
        web.Model.tb_book_lost bookLostModel = null;

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
            string dt1 = null;
            string dt2 = null;
            //判断开始时间是否为空
            if (beginDate.Value.Length > 0)
            {
                dt1 = beginDate.Value.Trim();
            }
            //判断结束时间是否为空
            if (endDate.Value.Length > 0)
            {
                dt2 = endDate.Value.Trim();
            }
            //以Between连接两个datetime时间               
            string strDate = MyBase.WhereParamBetween(dt1, dt2, "submit_date");
            //创建dic词典对象
            Dictionary<string, object> dic = new Dictionary<string, object>();
            //读取属性值
            string name = ntxtName.Text;
            string bookname = ntxtBookName.Text;            
            //将值添加到dic中
            dic.Add("borrow_name", name);
            dic.Add("book_name", bookname);
            //拼接字符串
            string sqlWhere = MyBase.WhereParamAnd(dic);
            //将前者条件和日期条件进行拼接
            if (sqlWhere != "1=1")
            {
                sqlWhere = sqlWhere + " and " + strDate;
            }
            else
            {
                sqlWhere = strDate;
            }

            int recordCount;
            DataSet ds = bookLostBLL.MyGetListByPage(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere, out recordCount);

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
        /// 分页页码改变
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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