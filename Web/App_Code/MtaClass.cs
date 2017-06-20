using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// MtaClass 的摘要说明
/// </summary>
public class MtaClass
{
    public static string configConnStr = "MTAConnectionString";
    public static string onlyAdminModule = "|UserList.aspx|UserAdd.aspx|LibraryList.aspx|NoteList.aspx|NoteAdd.aspx|UserAdminList.aspx|LibraryInfo.aspx|GetUser.aspx|noteInfo.aspx|NoteReaderList.aspx|";

    #region 定义数据类型枚举，用在检查数据有效性
    public enum dataType
    {
        myChar,
        myDate,
        myTime,
        myInt,
        myDecimal
    }
    #endregion

    public MtaClass()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
    }

    #region 检查登录状态
    public static void CheckLogin()
    {
        if (HttpContext.Current.Session["uid"] == null || HttpContext.Current.Session["isAdmin"] == null)
        {
            HttpContext.Current.Response.Write("<script language='JavaScript'>parent.location.href='../Default.aspx';</script>");
            HttpContext.Current.Response.End();
        }
        if (!Convert.ToBoolean(HttpContext.Current.Session["isAdmin"]))
        {
            //普通会员
            string nowPage = HttpContext.Current.Request.RawUrl;
            int i, j;
            i = nowPage.LastIndexOf('/') + 1;
            j = nowPage.LastIndexOf('?');
            if (j == -1)
            {
                nowPage = nowPage.Substring(i);
            }
            else
            {
                nowPage = nowPage.Substring(i, j - i);
            }
            if (MtaClass.onlyAdminModule.IndexOf(nowPage) > -1)
            {
                //无权访问
                HttpContext.Current.Response.Redirect("DefaultErr.aspx?err=1");
                HttpContext.Current.Response.End();
            }
        }
    }
    #endregion

    #region 用md5加密字符串后返回
    public string Md5(string s)
    {
        //用md5加密s，并返回
        byte[] result = Encoding.Default.GetBytes(s);
        MD5 md5 = new MD5CryptoServiceProvider();
        byte[] output = md5.ComputeHash(result);
        s = BitConverter.ToString(output).Replace("-", "");
        return s;
    }
    #endregion

    #region 替换特殊字符
    public static string replaceText(string text)
    {
        text = text.Replace("\n", "<p>");
        text = text.Replace("\r", "<br>");
        text = text.Replace("< ", "<");
        text = text.Replace(" >", ">");
        text = text.Replace("\r", "<br>");
        text = text.Replace("\n", "<p>");
        text = text.Replace("<p><p>", "<p>");
        text = text.Replace("<br><br>", "<br>");
        text = text.Replace("<p><P>", "<p>");
        text = text.Replace("[quote]", "<div class='quote'>");
        text = text.Replace("[/quote]", "</div>");
        return text;
    }
    #endregion

    #region 打开数据库：SqlConnection OpenConnect()
    public SqlConnection OpenConnect()
    {
        try
        {
            string connectString;
            connectString = ConfigurationManager.ConnectionStrings[configConnStr].ConnectionString;
            SqlConnection dbConnect = new SqlConnection(connectString);
            if (!dbConnect.State.Equals(ConnectionState.Open))
            {
                dbConnect.Open();
            }
            return dbConnect;
        }
        catch (SqlException)
        {
            return null;
        }
    }
    #endregion

    #region 关闭数据库：void CloseConnect(SqlConnection dbConnect)
    public void CloseConnect(SqlConnection dbConnect)
    {
        if (dbConnect.State.Equals(ConnectionState.Open))
        {
            dbConnect.Close();
        }
    }
    #endregion

    #region 读取数据，返回DataSet
    public DataSet GetDataSet(SqlConnection dbConnection, CommandType commandType, string commandText, SqlParameter[] p)
    {
        //创建并设置SqlCommand
        SqlCommand dbCommand = new SqlCommand();
        dbCommand.Connection = dbConnection;
        dbCommand.CommandType = commandType;
        dbCommand.CommandText = commandText;
        //添加参数
        if (p != null)
        {
            foreach (SqlParameter sp in p)
            {
                dbCommand.Parameters.Add(sp);
            }
        }
        //创建SqlDataAdapter并获取数据
        SqlDataAdapter dataAdapter = new SqlDataAdapter(dbCommand);
        DataSet ds = new DataSet();
        dataAdapter.Fill(ds);
        //返回数据
        return ds;
    }
    #endregion

    #region 读取数据，返回SqlDataReader
    public SqlDataReader GetDataReader(SqlConnection dbConnect, CommandType commandType, string commandText, SqlParameter[] p)
    {
        //设置命令
        SqlCommand dbCommand = new SqlCommand();
        dbCommand.Connection = dbConnect;
        dbCommand.CommandType = commandType;
        dbCommand.CommandText = commandText;
        //参数
        if (p != null)
        {
            foreach (SqlParameter sp in p)
            {
                dbCommand.Parameters.Add(sp);
            }
        }
        //读取第一个结果集
        SqlDataReader dbReader;
        dbReader = dbCommand.ExecuteReader();
        return dbReader;
    }
    #endregion

    #region 执行存储过程
    public bool execProc(string storeName, SqlParameter[] p, int pIndexForReturn, out string returnValue, Label lb)
    {
        //执行存储过程
        //执行存储过程添加数据，返回这个记录的自增值tid
        //获取连接字符串
        bool execOK = true;
        returnValue = "";
        //创建并设置SqlConnection
        SqlConnection dbConnection = OpenConnect();
        //创建并设置SqlCommand
        SqlCommand dbCommand = new SqlCommand();
        dbCommand.Connection = dbConnection;
        dbCommand.CommandType = CommandType.StoredProcedure;
        dbCommand.CommandText = storeName;
        //添加参数
        foreach (SqlParameter sp in p)
        {
            dbCommand.Parameters.Add(sp);
        }
        //执行存储过程
        try
        {
            dbCommand.ExecuteNonQuery();
            //返回存储过程的结果
            if (pIndexForReturn == -1)
            {
                //不用取返回参数值
                returnValue = "";
            }
            else
            {
                returnValue = p[pIndexForReturn].Value.ToString();
            }
        }
        catch (Exception ex)
        {
            //执行过程出错
            lb.Text += "操作过程有错：" + ex.Message;
            returnValue = "";
            execOK = false;
        }
        //关闭数据库
        CloseConnect(dbConnection);
        return execOK;
    }
    #endregion

    #region 执行sql命令
    public int execCommand(string commandText, SqlParameter[] p, Label LabelMsg)
    {
        int row = 0;
        //创建并设置SqlConnection
        SqlConnection dbConnection = OpenConnect();
        //创建并设置SqlCommand
        SqlCommand dbCommand = new SqlCommand();
        dbCommand.Connection = dbConnection;
        dbCommand.CommandType = CommandType.Text;
        dbCommand.CommandText = commandText;
        //添加参数
        foreach (SqlParameter sp in p)
        {
            dbCommand.Parameters.Add(sp);
        }
        //执行命令
        try
        {
            row = dbCommand.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {
            //执行过程出错
            if (LabelMsg != null)
            {
                LabelMsg.Text += "操作过程有错：" + ex.Message;
            }
            row = -1;
        }
        //关闭数据库
        CloseConnect(dbConnection);
        return row;
    }
    #endregion

    #region 处理添加/修改FormView前的数据验证
    public int checkFormViewInsertParm(FormViewInsertEventArgs e, Label lb, dataType dt, bool emptyOK, int maxLen, string parmName, string msg)
    {
        int err = 0;
        string t;
        t = e.Values[parmName].ToString();
        if (!emptyOK)
        {
            if (t.Length == 0)
            {
                lb.Text += "<br>·" + msg + "必须录入";
                err++;
            }
        }
        switch (dt)
        {
            case dataType.myChar:
                if (t.Length == 0)
                {
                    e.Values[parmName] = "";
                }
                else
                {
                    if (t.Length > maxLen)
                    {
                        lb.Text += "<br>·" + msg + "不可以大于" + maxLen.ToString() + "个字符";
                        err++;
                    }
                }
                break;
            case dataType.myDate:
                if (t.Length == 0)
                {
                    e.Values[parmName] = "1900-01-01";
                }
                else
                {
                    try
                    {
                        e.Values[parmName] = Convert.ToDateTime(t).ToString("yyyy-MM-dd");
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
            case dataType.myTime:
                if (t.Length == 0)
                {
                    e.Values[parmName] = "1900-01-01 00:00:00";
                }
                else
                {
                    try
                    {
                        e.Values[parmName] = Convert.ToDateTime(t).ToString("yyyy-MM-dd HH:mm:ss");
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
            case dataType.myInt:
                if (t.Length == 0)
                {
                    e.Values[parmName] = "0";
                }
                else
                {
                    try
                    {
                        int i;
                        i = Convert.ToInt32(t);
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
            case dataType.myDecimal:
                if (t.Length == 0)
                {
                    e.Values[parmName] = "0.00";
                }
                else
                {
                    try
                    {
                        decimal d;
                        d = Convert.ToDecimal(t);
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
        }
        return err;
    }
    public int checkFormViewUpdateParm(FormViewUpdateEventArgs e, Label lb, dataType dt, bool emptyOK, int maxLen, string parmName, string msg)
    {
        int err = 0;
        string t;
        t = e.NewValues[parmName].ToString();
        if (!emptyOK)
        {
            if (t.Length == 0)
            {
                lb.Text += "<br>·" + msg + "必须录入";
                err++;
            }
        }
        switch (dt)
        {
            case dataType.myChar:
                if (t.Length == 0)
                {
                    e.NewValues[parmName] = "";
                }
                else
                {
                    if (t.Length > maxLen)
                    {
                        lb.Text += "<br>·" + msg + "不可以大于" + maxLen.ToString() + "个字符";
                        err++;
                    }
                }
                break;
            case dataType.myDate:
                if (t.Length == 0)
                {
                    e.NewValues[parmName] = "1900-01-01";
                }
                else
                {
                    try
                    {
                        e.NewValues[parmName] = Convert.ToDateTime(t).ToString("yyyy-MM-dd");
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
            case dataType.myTime:
                if (t.Length == 0)
                {
                    e.NewValues[parmName] = "1900-01-01 00:00:00";
                }
                else
                {
                    try
                    {
                        e.NewValues[parmName] = Convert.ToDateTime(t).ToString("yyyy-MM-dd HH:mm:ss");
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
            case dataType.myInt:
                if (t.Length == 0)
                {
                    e.NewValues[parmName] = "0";
                }
                else
                {
                    try
                    {
                        int i;
                        i = Convert.ToInt32(t);
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
            case dataType.myDecimal:
                if (t.Length == 0)
                {
                    e.NewValues[parmName] = "0.00";
                }
                else
                {
                    try
                    {
                        decimal d;
                        d = Convert.ToDecimal(t);
                    }
                    catch (Exception)
                    {
                        lb.Text += "<br>·" + msg + "格式不正确";
                        err++;
                    }
                }
                break;
        }
        return err;
    }
    #endregion

    #region FormView的insert和update的结果：static bool FormViewItemInserted和FormViewItemUpdated
    public static bool FormViewItemInserted(FormViewInsertedEventArgs e, Label LabelMsg)
    {
        e.ExceptionHandled = true;
        if (e.AffectedRows != 0)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作成功";
            }
            return true;
        }
        else
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作失败";
                if (e.Exception != null)
                {
                    LabelMsg.Text += "：" + e.Exception.Message;
                }
            }
        }
        return false;
    }
    public static bool FormViewItemUpdated(FormViewUpdatedEventArgs e, Label LabelMsg)
    {
        e.ExceptionHandled = true;
        if (e.AffectedRows != 0)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作成功";
            }
            return true;
        }
        else
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作失败";
                if (e.Exception != null)
                {
                    LabelMsg.Text += "：" + e.Exception.Message;
                }
            }
        }
        return false;
    }
    #endregion

    #region GridView的RowUpdated和的结果
    public static bool GridViewRowUpdated(GridViewUpdatedEventArgs e, Label LabelMsg)
    {
        e.ExceptionHandled = true;
        if (e.AffectedRows != 0)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作成功";
            }
            return true;
        }
        else
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作失败";
                if (e.Exception != null)
                {
                    LabelMsg.Text += "：" + e.Exception.Message;
                }
            }
        }
        return false;
    }
    public static bool GridViewRowDeleted(GridViewDeletedEventArgs e, Label LabelMsg)
    {
        e.ExceptionHandled = true;
        if (e.AffectedRows != 0)
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作成功";
            }
            return true;
        }
        else
        {
            if (LabelMsg != null)
            {
                LabelMsg.Text = "操作失败";
                if (e.Exception != null)
                {
                    LabelMsg.Text += "：" + e.Exception.Message;
                }
            }
        }
        return false;
    }
    #endregion
}