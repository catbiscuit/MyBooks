using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.main
{
    /// <summary>
    /// 退出登录
    /// </summary>
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //将session删除
            Session.Remove("uid");
            Session.Remove("una");
            Session.Remove("isAdmin");

            //重新定位到登录界面
            Response.Redirect("../Default.aspx");
        }
    }
}