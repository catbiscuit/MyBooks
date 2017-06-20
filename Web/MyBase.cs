using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Web
{
    /// <summary>
    /// 自定义常用的方法
    /// </summary>
    public class MyBase
    {
        /// <summary>
        /// 返回Sql语句 Where后的以And链接的条件字符串
        /// </summary>
        /// <param name="dicParam">where后的参数数据字典</param>
        /// <returns>Where后的以And链接的条件字符串</returns>
        public static string WhereParamAnd(Dictionary<string, object> dicParam)
        {
            StringBuilder sbWhere = new StringBuilder();
            foreach (var item in dicParam)
            {
                if (item.Value != null&&item.Value.ToString()!="")
                {
                    sbWhere.AppendFormat(" {0} like '%{1}%' and", item.Key, item.Value);
                }
            }

            if (sbWhere.ToString() != string.Empty)
            {
                return sbWhere.ToString().Substring(0, sbWhere.ToString().Length - 3);
            }
            else
            {
                return "1=1";
            }
        }

        /// <summary>
        /// 关闭弹出框并刷新父页----点击刷新按钮
        /// </summary>
        public static void ClosePopWinAndRefreshPage()
        {
            System.Web.UI.Page curPage = (System.Web.UI.Page)HttpContext.Current.CurrentHandler;
            //从网上找的方法，将父窗口reload()重新载入。
            curPage.ClientScript.RegisterStartupScript(curPage.GetType(), "close", "parent.window.ymPrompt.close();parent.document.location.reload()", true);

            //原来的方法，只能关闭弹窗，而不能刷新父页面(大概是使用了母版页的原因，无法通过ID来找到按钮，继而无法完成触发点击事件，即无法完成刷新)
            //curPage.ClientScript.RegisterStartupScript(curPage.GetType(), "close", "parent.window.ymPrompt.close();parent.document.getElementById('btnRefresh').click();", true);
        }

        /// <summary>
        ///  返回Sql语句 Where后的以Between链接的条件日期判断
        /// </summary>
        /// <param name="dateStart">开始日期</param>
        /// <param name="dateEnd">结束日期</param>
        /// <param name="strValue">数据库对应字段</param>
        /// <returns>Where后的以Between链接的条件日期判断</returns>
        public static string WhereParamBetween(string dateStart, string dateEnd, string strValue)
        {
            StringBuilder sbWhere = new StringBuilder();

            if (dateStart != null && dateEnd != null)
            {
                sbWhere.AppendFormat(" ( {0} between '{1}' and '{2}' )", strValue, Convert.ToDateTime(dateStart).ToString("yyyy-MM-dd"), Convert.ToDateTime(dateEnd).ToString("yyyy-MM-dd"));
            }
            else if (dateStart != null)
            {
                sbWhere.AppendFormat(" {0}>='{1}'", strValue, Convert.ToDateTime(dateStart).ToString("yyyy-MM-dd"));
            }
            else if (dateEnd != null)
            {
                sbWhere.AppendFormat(" {0}<='{1}'", strValue, Convert.ToDateTime(dateEnd).ToString("yyyy-MM-dd"));
            }
            else
            {
                sbWhere.Append("1=1");
            }

            return sbWhere.ToString();
        }
        /// <summary>
        /// 设置分页样式
        /// </summary>
        /// <param name="iCurrentPageIndex">当前页码</param>
        /// <param name="iPageCount">总页数</param>
        /// <param name="iGridRowsCount">Grid每页显示的数目</param>
        /// <param name="iRecordCount">记录总数</param>
        /// <returns></returns>
        public static string SetPagerStyle(int iCurrentPageIndex, int iPageCount, int iGridRowsCount, int iRecordCount)
        {
            string strStyle = "<div style=\"height:100%;line-height:100%\">当前第<span style=\"color:red\">{0}</span>/{1}页 本页<span style=\"color:red\">{2}</span>条 "
                              + "共<span style=\"color:red\">{3}</span>条</div>";
            strStyle = string.Format(strStyle, iCurrentPageIndex, iPageCount, iGridRowsCount, iRecordCount);
            return strStyle;
        }
    }
}