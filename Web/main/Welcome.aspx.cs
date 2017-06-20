using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.main
{
    /// <summary>
    /// 首页默认页面
    /// </summary>
    public partial class Welcome : System.Web.UI.Page
    {
        /// <summary>
        /// 页面载入
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            ////在页面显示基本介绍
            //LiteralMsg.Text = "1、欢迎 " + Session["una"].ToString() + "，现在是：" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "，工作愉快！" +
            //                  "<br><br>" + "2、图书管理:你可以添加和修改图书馆中的书籍信息！" +
            //                  "<br><br>" + "3、借阅管理:可以对学生的借阅卡进行管理以及图书的借阅归还续借操作。" +
            //                  "<br><br>" + "4、数据查询:你可以查询图书的入馆记录和借阅记录"+
            //                  "<br><br>" + "5、数据统计:你可以查询图书的一些统计信息" ;
            //在页面显示基本介绍
            //2017-02-13 动态显示当前系统时间
            LiteralMsg.Text = "1、欢迎 " + Session["una"].ToString() + "，工作愉快！" +
                              "<br><br>" + "2、图书管理:你可以添加和修改图书馆中的书籍信息！" +
                              "<br><br>" + "3、借阅管理:可以对学生的借阅卡进行管理以及图书的借阅归还续借操作。" +
                              "<br><br>" + "4、数据查询:你可以查询图书的入馆记录和借阅记录" +
                              "<br><br>" + "5、数据统计:你可以查询图书的一些统计信息";
        }
    }
}