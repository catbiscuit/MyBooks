using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.Model;

namespace Web.main
{
    public partial class BookType : System.Web.UI.Page
    {
        web.BLL.tb_book_type bookTypeBLL = new web.BLL.tb_book_type();
        tb_book_type bookTypeModel = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["key"];
                if (id == "1")
                {
                    txtID.Text = "添加";
                }
                else
                {
                    txtID.Text = "修改";
                }
                this.BindTreeView(TreeView1);
            }
        }

        /// <summary>
        /// 生成根节点
        /// </summary>
        /// <param name="treeview"></param>
        protected void BindTreeView(TreeView treeview)
        {
            DataTable dt = bookTypeBLL.MyGetAll().Tables[0];
            treeview.Nodes.Clear();
            DataRow[] parentrow = dt.Select("parent_no='0'");
            for (int i = 0; i < parentrow.Length; i++)
            {
                TreeNode rootnode = new TreeNode();                                
                rootnode.Text = "<a href=\"javascript:select('" + parentrow[i]["no"].ToString().Trim() + "','"+ parentrow[i]["name"].ToString().Trim() + "')\">" + parentrow[i]["show"].ToString() + "</a>";
                //rootnode.Text = parentrow[i]["name"].ToString(); //parentrow[i][3].ToString();
                rootnode.Value = parentrow[i]["no"].ToString(); 
                rootnode.Expanded = true;
                rootnode.Selected = false;
                rootnode.SelectAction = TreeNodeSelectAction.None;
                treeview.Nodes.Add(rootnode);
                CreateChildNode(rootnode, dt); //
            }
        }
        /// <summary>
        /// 生成子节点
        /// </summary>
        /// <param name="parentNode"></param>
        /// <param name="datatable"></param>
        protected void CreateChildNode(TreeNode parentNode, DataTable datatable)
        {
            DataRow[] rowlist = datatable.Select("parent_no='" + parentNode.Value+"'");
            for (int i = 0; i < rowlist.Length; i++)
            {
                TreeNode node = new TreeNode();
                #region 现在的父节点和字节点都可以被选择
                node.Text = "<a href=\"javascript:select('" + rowlist[i]["no"].ToString().Trim() + "','" + rowlist[i]["name"].ToString().Trim() + "')\">" + rowlist[i]["show"].ToString() + "</a>";                
                node.Value = rowlist[i]["no"].ToString();
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
                CreateChildNode(node, datatable); //递归调用
            }
        }
    }
}