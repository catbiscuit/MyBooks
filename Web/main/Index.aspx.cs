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
    /// 默认页面(主页面)
    /// </summary>
    public partial class Index : System.Web.UI.Page
    {
        tb_menu menuBLL = new tb_menu();
        tb_menu_manager menuManagerBLL = new tb_menu_manager();
        /// <summary>
        /// 页面初始化
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Init(object sender, EventArgs e)
        {
            //调用公用方法，检测是否登录
            MtaClass.CheckLogin();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //判断身份类型
            if (Convert.ToBoolean(Session["isAdmin"]))
            {
                ////管理员
                //TreeView1.Visible = true;
                //TreeView2.Visible = false;
                lblLoginUser.Text = Session["una"].ToString();
                BindMenu(Session["uid"].ToString());
            }
            else
            {
                ////普通会员
                //TreeView1.Visible = false;
                //TreeView2.Visible = true;
            }
        }

        private void BindMenu(string userid)
        {            
            //获取用户菜单
            DataTable dtMMList = menuBLL.MyGetManagerMenuList(Convert.ToInt16(userid)).Tables[0];
            //获取所有的菜单
            DataTable dtMenu = menuBLL.GetAllList().Tables[0];
            StringBuilder strMenu = new StringBuilder();
            //取出一级菜单
            DataRow[] drLevelones = dtMenu.Select("menu_level=1", "menu_sort asc");     
            //循环一级菜单       
            foreach (DataRow drLevelone in drLevelones)
            {
                //如果有用户菜单中的父菜单，则开始循环
                if (dtMMList.Select("menu_parent_id='"+ drLevelone["menu_id"].ToString()+"'").Length>0)
                {
                    strMenu.Append(@"<li> <h4>" + drLevelone["menu_name"].ToString() + @"</h4>");
                    //现在只循环用户的菜单
                    DataRow[] drLeveltwos = dtMMList.Select("menu_level=2 and menu_parent_id='" + drLevelone["menu_id"].ToString() + "'", "menu_sort asc");
                    //原来的全部菜单
                    //DataRow[] drLeveltwos = dtMenu.Select("menu_level=2 and menu_parent_id='" + drLevelone["menu_id"].ToString() + "'", "menu_sort asc");
                    if (drLeveltwos.Length > 0)
                    {
                        strMenu.Append(@"<div class=""list-item none"">");
                        foreach (DataRow drLeveltwo in drLeveltwos)
                        {
                            strMenu.Append(@"  <p> <a href=""" + "#" + @""" onclick="" setUrl('" + drLeveltwo["menu_url"].ToString() + "','" + drLeveltwo["menu_name"].ToString() + @"','"+ drLeveltwo["menu_id"].ToString() + @"')"">" + drLeveltwo["menu_name"].ToString() + @"</a></p>");
                        }
                        strMenu.Append(@" </div>");
                    }
                    strMenu.Append(@" </li>");
                }

            }

            J_navlist.InnerHtml = strMenu.ToString();
        }

        protected void btnLoginOut_Click(object sender, EventArgs e)
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