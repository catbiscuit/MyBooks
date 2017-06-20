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
    public partial class BookStatus : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);
        tb_book_info bookInfoBLL = new tb_book_info();
        protected void Page_Load(object sender, EventArgs e)
        {
            Pager.PageSize = intPage;
            this.DataBindToRepeater();
        }

        /// <summary>
        /// 基础数据绑定到Repeater
        /// </summary>
        private void DataBindToRepeater()
        {
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
            else if ((PageValidate.IsAllNumber(name)) && (name.Length <= 13))
            {
                dic.Add("ISBN", name);
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

            int recordCount;
            DataSet ds = bookInfoBLL.MyGetListByPage(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere, out recordCount);

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