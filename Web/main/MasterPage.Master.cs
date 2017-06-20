using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.main
{
    /// <summary>
    /// 母版页
    /// </summary>
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        /// <summary>
        /// 页面初始化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Init(object sender, EventArgs e)
        {
            //检测是否登录
            MtaClass.CheckLogin();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}