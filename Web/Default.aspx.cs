using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web
{
    public partial class Default : System.Web.UI.Page
    {
        tb_borrow_card borrowCardBLL = new tb_borrow_card();
        tb_manager managerBLL = new tb_manager();

        web.Model.tb_manager manager = null;
        web.Model.tb_borrow_card card = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            string msg = "";
            bool ok = false;
            string una = TextBox1.Text;
            string upa = TextBox2.Text;
            try
            {
                if (upa == "")
                {
                    if (borrowCardBLL.Exists(una))
                    {
                        Session.Add("uid", 2);
                        Session.Add("una", una);
                        Session.Add("isAdmin", false);
                        ok = true;
                    }
                    else
                    {
                        ok = false;
                        msg = "<script type='text/javascript'>alert('请输入借阅卡号，或者该借阅卡号不存在请核对！');</script>";
                    }
                }
                else
                {
                    MtaClass mc = new MtaClass();
                    string strWhere = " account='" + una + "' and password='" + mc.Md5(upa) + "'";
                    DataSet ds = managerBLL.GetList(strWhere);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        manager = new web.Model.tb_manager();
                        manager = managerBLL.GetModel(Convert.ToInt16(ds.Tables[0].Rows[0]["id"]));
                        Session.Add("uid", manager.id);
                        Session.Add("una", manager.account);
                        Session.Add("isAdmin", true);
                        ok = true;
                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'>alert('用户不存在或密码错误，请核对。');</script>");
                    }
                }
            }

            catch (SqlException ex)
            {
                ok = false;
                msg = "<script type='text/javascript'>alert('登录失败：" + ex.Message + "');</script>";
            }
            if (ok)
            {
                Response.Redirect("main/index.aspx");
            }
            else
            {
                Response.Write(msg);
            }
        }

        //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        //{
        //    //登录
        //    bool ok = false;
        //    string msg = "";
        //    MtaClass mc = new MtaClass();
        //    SqlConnection dbConnect = mc.OpenConnect();
        //    if (dbConnect == null)
        //    {
        //        msg = "<script type='text/javascript'>alert('数据库连接失败，请与系统管理员联系');</script>";
        //    }
        //    else
        //    {
        //        ok = true;
        //    }
        //    if (ok)
        //    {
        //        string una, upa;
        //        int id = 0, utype = 0;
        //        una = TextBox1.Text;
        //        upa = mc.Md5(TextBox2.Text);
        //        //执行存储过程：a_Login ( @na varchar(30), @pa varchar(32), @id int out, @utype smallint out )
        //        SqlCommand dbCommand = new SqlCommand();
        //        dbCommand.CommandText = "a_Login";
        //        dbCommand.CommandType = CommandType.StoredProcedure;
        //        dbCommand.Connection = dbConnect;
        //        //四个参数
        //        SqlParameter[] p = new SqlParameter[4];
        //        p[0] = new SqlParameter();
        //        p[0].ParameterName = "@na";
        //        p[0].SqlDbType = SqlDbType.VarChar;
        //        p[0].Size = 30;
        //        p[0].Value = una;
        //        p[1] = new SqlParameter();
        //        p[1].ParameterName = "@pa";
        //        p[1].SqlDbType = SqlDbType.VarChar;
        //        p[1].Size = 32;
        //        p[1].Value = upa;
        //        p[2] = new SqlParameter();
        //        p[2].ParameterName = "@id";
        //        p[2].SqlDbType = SqlDbType.Int;
        //        p[2].Direction = ParameterDirection.Output;
        //        p[2].Value = id;
        //        p[3] = new SqlParameter();
        //        p[3].ParameterName = "@utype";
        //        p[3].SqlDbType = SqlDbType.SmallInt;
        //        p[3].Direction = ParameterDirection.Output;
        //        p[3].Value = utype;
        //        dbCommand.Parameters.Add(p[0]);
        //        dbCommand.Parameters.Add(p[1]);
        //        dbCommand.Parameters.Add(p[2]);
        //        dbCommand.Parameters.Add(p[3]);
        //        //执行
        //        try
        //        {
        //            dbCommand.ExecuteNonQuery();
        //            id = Convert.ToInt32(p[2].Value);
        //            utype = Convert.ToInt32(p[3].Value);
        //            if (id < 1 || utype < 1)
        //            {
        //                ok = false;
        //                msg = "";
        //            }
        //            else
        //            {
        //                Session.Add("uid", id);
        //                Session.Add("una", una);
        //                Session.Add("isAdmin", (utype == 1 ? true : false));
        //            }
        //        }
        //        catch (SqlException ex)
        //        {
        //            ok = false;
        //            msg = "<script type='text/javascript'>alert('登录失败：" + ex.Message + "');</script>";
        //        }
        //    }
        //    mc.CloseConnect(dbConnect);
        //    if (ok)
        //    {
        //        Response.Redirect("main/Default.aspx");
        //    }
        //    else
        //    {
        //        Response.Write(msg);
        //    }
        //}
    }
}