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
    /// 图书类型统计
    /// </summary>
    public partial class BookTypeStat : System.Web.UI.Page
    {
        //创建bookInfoBLL 对象
        private tb_book_info bookInfoBLL = new tb_book_info();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.DataBindToRepeater();
            }
        }

        /// <summary>
        /// 基础数据绑定到Repeater
        /// </summary>
        private void DataBindToRepeater()
        {
            DataSet ds = bookInfoBLL.MySPGetTypeList();

            this.Repeater1.DataSource = ds.Tables[0];
            this.Repeater1.DataBind();
        }

        protected void nlbtRefresh_Click(object sender, EventArgs e)
        {
            this.DataBindToRepeater();
        }
    }
}