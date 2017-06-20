using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;
using web.Common;

namespace Web.main
{
    /// <summary>
    /// 图书列表
    /// </summary>
    public partial class BookList : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);
        //定义id
        private int id = 0;
        //定义Did
        private string Did = string.Empty;
        //创建bookInfoBLL 对象
        private tb_book_info bookInfoBLL = new tb_book_info();
        /// <summary>
        /// 页面载入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
            string strDate = MyBase.WhereParamBetween(dt1, dt2, "putin_time");
            //创建dic词典对象
            Dictionary<string, object> dic = new Dictionary<string, object>();
            //读取属性值
            string name = ntxtName.Text;
            string author = ntxtAuthor.Text;
            string pulisher = ntxtPublisher.Text;
            //将值添加到dic中
            //拼音简码：检测是否全是字母
            if (PageValidate.IsLetter(name))
            {
                dic.Add("spell", name.ToUpper());
            }
            //ISBN：检测是否全是数字
            else if ((PageValidate.IsAllNumber(name))&&(name.Length<=13))
            {
                dic.Add("ISBN",name);
            }
            //名称
            else
            {
                dic.Add("name", name);
            }
            
            dic.Add("author", author);
            dic.Add("publisher", pulisher);
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
            DataSet ds = bookInfoBLL.MyGetListByPage(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere, out recordCount);

            this.Repeater1.DataSource = ds.Tables[0];
            this.Repeater1.DataBind();

            Pager.RecordCount = recordCount;
            Pager.CustomInfoHTML = MyBase.SetPagerStyle(Pager.CurrentPageIndex, Pager.PageCount, ds.Tables[0].Rows.Count, recordCount);

        }
        /// <summary>
        /// Repeater控件事件
        /// </summary>
        /// <param name="source"></param>
        /// <param name="e"></param>
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Edit": id = int.Parse(e.CommandArgument.ToString()); break;
                case "Cancel": id = -1; break;
                case "Delete": Did = e.CommandArgument.ToString(); this.DeleteRepeater(Did); break;
            }
            this.DataBindToRepeater();
        }
        /// <summary>
        /// Repeater删除一行
        /// </summary>
        /// <param name="id"></param>
        private void DeleteRepeater(string id)
        {
            bookInfoBLL.Delete(id);
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