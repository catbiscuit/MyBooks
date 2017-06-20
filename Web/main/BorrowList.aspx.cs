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
    /// 借阅列表
    /// </summary>
    public partial class BorrowList : System.Web.UI.Page
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
            //原来的没有关联借阅表的查询
            //string strSql = "tb_book_borrow.borrow_id,tb_book_borrow.out_time,tb_book_borrow.in_time,";
            //strSql += "tb_book_borrow.reality_time,tb_borrower_info.name,tb_borrower_info.grade,tb_book_info.name as book_name,";
            //strSql += "tb_book_info.ISBN,tb_book_info.publisher from ";
            //strSql += "tb_book_borrow inner join tb_borrower_info on tb_book_borrow.borrow_id=tb_borrower_info.card_id ";
            //strSql += "inner join tb_book_info on tb_book_borrow.book_id =tb_book_info.id";

            StringBuilder sb = new StringBuilder();
            sb.Append("tb_borrow_again.id,tb_borrow_again.again_date,tb_borrow_again.again_intime,tb_borrow_again.manager,");
            sb.Append("tb_book_borrow.out_time,tb_book_borrow.in_time,tb_book_borrow.reality_time,tb_book_borrow.again_count,");
            sb.Append("tb_book_info.name as book_name,tb_book_info.author,tb_book_info.ISBN,tb_book_info.publisher,");
            sb.Append("tb_borrower_info.name as name,tb_borrower_info.grade,tb_book_borrow.id as borrow_id ");
            sb.Append("from ");
            sb.Append("tb_book_borrow ");
            sb.Append("outer apply ");
            sb.Append("( ");
            sb.Append("select top 1 * from tb_borrow_again ");
            sb.Append("where book_borrow_id=tb_book_borrow.id ");
            sb.Append("order by again_date desc ");
            sb.Append(") ");
            sb.Append("tb_borrow_again ");
            sb.Append("left join ");
            sb.Append("tb_book_info ");
            sb.Append("on ");
            sb.Append("tb_book_borrow.book_id=tb_book_info.id ");
            sb.Append("left join ");
            sb.Append("tb_borrow_card ");
            sb.Append("on ");
            sb.Append("tb_book_borrow.borrow_id=tb_borrow_card.id ");
            sb.Append("left join ");
            sb.Append("tb_borrower_info ");
            sb.Append("on ");
            sb.Append("tb_borrower_info.card_id=tb_borrow_card.id ");
            string strSql = sb.ToString();

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
            string strDate = MyBase.WhereParamBetween(dt1, dt2, "out_time");
            //创建dic词典对象
            Dictionary<string, object> dic = new Dictionary<string, object>();
            //读取属性值
            string readername = ntxtReaderName.Text;
            string bookname = ntxtBookName.Text;
            //将值添加到dic中
            dic.Add("tb_borrower_info.name", readername);
            dic.Add("tb_book_info.name", bookname);
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
            DataSet ds = bookInfoBLL.MyBaseListByPage(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere,strSql, out recordCount);

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

        protected void nlbtRefresh_Click(object sender, EventArgs e)
        {
            this.DataBindToRepeater();
        }
    }
}