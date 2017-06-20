using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web.main
{
    /// <summary>
    /// 修改密码
    /// </summary>
    public partial class ChangePwd : System.Web.UI.Page
    {
        tb_manager managerBLL = new tb_manager();
        web.Model.tb_manager manager = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            try
            {
                int name = int.Parse(Session["uid"].ToString());
                manager = managerBLL.GetModel(name);

                string pwd = NewPwd.Text;
                if (pwd.Length < 4)
                {
                    string msg = "<script type='text/javascript'>alert('密码长度不能小于4位');</script>";
                    Response.Write(msg);
                }
                else
                {
                    MtaClass mc = new MtaClass();
                    manager.password = mc.Md5(pwd);

                    managerBLL.Update(manager);
                    //提示修改成功
                    Response.Write("<script type='text/javascript'>alert('密码修改成功，请重新登录');</script>");

                    //将session删除
                    Session.Remove("uid");
                    Session.Remove("una");
                    Session.Remove("isAdmin");

                    //将iframe界面重新载入默认的欢迎界面                    
                    Response.Write("<script type='text/javascript'>window.parent.location='../Default.aspx'</script>");                   
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script type='text/javascript'>alert('修改失败：" + ex.Message + "');</script>");
            }
        }
    }
}