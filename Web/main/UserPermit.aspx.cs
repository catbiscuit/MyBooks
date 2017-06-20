using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;
using web.Common;

namespace Web.main
{
    /// <summary>
    /// 用户菜单角色管理
    /// </summary>
    public partial class UserPermit : System.Web.UI.Page
    {
        tb_menu menuBLL = new tb_menu();
        tb_manager managerBLL = new tb_manager();
        tb_menu_manager menuManagerBLL = new tb_menu_manager();
        web.Model.tb_menu_manager menuManagerModel = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //绑定用户列表
                this.BindUser();
                //显示菜单树状图
                this.BindTreeView(TreeView1,string.Empty);
            }
        }
        /// <summary>
        /// 绑定用户列表
        /// </summary>
        protected void BindUser()
        {
            DataTable dt = managerBLL.GetAllList().Tables[0];
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "account";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
        }

        /// <summary>
        /// 生成根节点
        /// </summary>
        /// <param name="treeview"></param>
        protected void BindTreeView(TreeView treeview,string userid)
        {
            DataTable dt = menuBLL.GetAllList().Tables[0];
            treeview.Nodes.Clear();
            DataRow[] parentrow = dt.Select("menu_level=1");
            for (int i = 0; i < parentrow.Length; i++)
            {
                TreeNode rootnode = new TreeNode();
                rootnode.Text = "<input name=\"item\" id=\"" + parentrow[i]["menu_id"].ToString().Trim() + "\" type=\"checkbox\" value=\"" + parentrow[i]["menu_id"].ToString().Trim() + "\" > <label for=\"" + parentrow[i]["menu_id"].ToString().Trim() + "\">" + parentrow[i]["menu_name"].ToString().Trim() + "</label>";
                rootnode.Value = parentrow[i]["menu_id"].ToString();
                rootnode.Expanded = true;
                rootnode.Selected = false;
                rootnode.SelectAction = TreeNodeSelectAction.None;
                treeview.Nodes.Add(rootnode);
                CreateChildNode(rootnode, dt, userid);
            }
        }

        /// <summary>
        /// 生成子节点
        /// </summary>
        /// <param name="parentNode"></param>
        /// <param name="datatable"></param>
        protected void CreateChildNode(TreeNode parentNode, DataTable datatable,string userid)
        {
            DataTable dtMMList = null;
            if (userid != "" && userid != null)
            {
                dtMMList = menuManagerBLL.GetList("user_id=" + userid).Tables[0];
            }
            DataRow[] rowlist = datatable.Select("menu_parent_id='" + parentNode.Value + "'");            
            for (int i = 0; i < rowlist.Length; i++)
            {
                TreeNode node = new TreeNode();
                #region 现在的父节点和字节点都可以被选择                 
                if (dtMMList != null)
                {
                    if (dtMMList.Select("menu_id='" + rowlist[i]["menu_id"].ToString() + "'").Length > 0)
                    {
                        node.Text = "<input name=\"item\" id=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\" type=\"checkbox\" checked=\"checked\" value=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\" > <label for=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\">" + rowlist[i]["menu_name"].ToString().Trim() + "</label>";
                    }
                    else
                    {
                        node.Text = "<input name=\"item\" id=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\" type=\"checkbox\" value=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\" ><label for=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\">" + rowlist[i]["menu_name"].ToString().Trim() + "</label>";
                    }
                }
                else
                {
                    node.Text = "<input name=\"item\" id=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\" type=\"checkbox\" value=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\" > <label for=\"" + rowlist[i]["menu_id"].ToString().Trim() + "\">" + rowlist[i]["menu_name"].ToString().Trim() + "</label>";
                }                         
                node.Value = rowlist[i]["menu_id"].ToString();
                #endregion

                #region 加上if判断，如果是不是最后一级的节点就只是label，无法被选择。
                //if (datatable.Select("parent_no='" + rowlist[i]["no"].ToString().Trim() + "'").Length > 0)
                //{                
                //    node.Text = rowlist[i]["name"].ToString();
                //    node.Value = rowlist[i]["no"].ToString();
                //}
                //else
                //{
                //    node.Text = "<a href=\"javascript:;\" onclick=\"OpenUrl('" + rowlist[i]["no"].ToString().Trim() + "',this)\">" + rowlist[i]["name"].ToString() + "</a>";                
                //    node.Value = rowlist[i]["no"].ToString();
                //}
                #endregion

                node.Expanded = false;
                node.Selected = false;
                node.SelectAction = TreeNodeSelectAction.None;
                parentNode.ChildNodes.Add(node);
                CreateChildNode(node, datatable,userid); //递归调用
            }
        }

        /// <summary>
        /// 显示用户的菜单角色
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userID = DropDownList1.SelectedValue;
            BindTreeView(TreeView1, userID);
        }

        /// <summary>
        /// 点击保存按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string userID = DropDownList1.SelectedValue;
                if (userID == "1")
                {
                    Response.Write("<script type='text/javascript'>alert(\"该账号为系统管理员，权限无法修改！\")</script>");
                }
                else
                {
                    MenuSave(userID);                    
                    BindTreeView(TreeView1, userID);
                }
            }
            catch(Exception ex)
            {
                LogHelper.WriteLog(ex.ToString());
            }
        }

        /// <summary>
        /// 保存用户菜单角色
        /// </summary>
        /// <param name="userid"></param>
        protected void MenuSave(string userid)
        {
            //查询出用户之前的菜单角色列表
            DataTable dtMMList = menuManagerBLL.GetList("user_id=" + userid).Tables[0];
            //循环删除
            foreach (DataRow item in dtMMList.Rows)
            {
                menuManagerBLL.Delete(Convert.ToInt16(item["id"]));
            }
            string strSelect = null;
            //这个地方添加trycatch，是因为当某用户的菜单角色为空(即被清空)时，strSelect = Request.Form["item"].ToString();会因为获取不到数据而报错
            try
            {
                //从前台获取被选择的checkbox
                strSelect = Request.Form["item"].ToString();
                //取出
                string[] strMenu = strSelect.Split(',');
                //循环添加到用户角色菜单表
                for (int i = 0; i < strMenu.Length; i++)
                {
                    menuManagerModel = new web.Model.tb_menu_manager();
                    menuManagerModel.user_id = Convert.ToInt16(userid);
                    menuManagerModel.menu_id = strMenu[i];
                    menuManagerBLL.Add(menuManagerModel);
                }
                Response.Write("<script type='text/javascript'>alert(\"修改成功！\")</script>");
            }
            catch
            {
                Response.Write("<script type='text/javascript'>alert(\"修改成功,菜单角色为空！\")</script>");
            }
         
        }
    }
}