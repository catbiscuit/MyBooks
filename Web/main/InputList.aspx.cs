﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web.BLL;

namespace Web.main
{
    /// <summary>
    /// 图书入馆记录
    /// </summary>
    public partial class InputList : System.Web.UI.Page
    {
        //获取web.config中设置的分页
        int intPage = int.Parse(System.Configuration.ConfigurationManager.AppSettings["Page_Count"]);
        //创建bookInfoBLL 对象
        private tb_book_info bookInfoBLL = new tb_book_info();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Pager.PageSize = intPage;
                this.DataBindToRepeater();
            }
        }

        private void DataBindToRepeater()
        {
            //定义两个接收时间的字符串
            string dt1 = null;
            string dt2 = null;
            //判断开始时间是否为空
            if (beginDate.Value.Length > 0)
            {
                dt1 = beginDate.Value.Trim();
            }
            //判断结束时间是否为空
            if (endDate.Value.Length > 0)
            {
                dt2 = endDate.Value.Trim();
            }
            //以Between连接两个datetime时间               
            string strDate = MyBase.WhereParamBetween(dt1, dt2, "putin_time");
            //创建dic词典对象
            Dictionary<string, object> dic = new Dictionary<string, object>();
            //读取属性值
            string pulisher = ntxtPublisher.Text;
            //将值添加到dic中
            dic.Add("publisher", pulisher);
            //拼接字符串
            string sqlWhere = MyBase.WhereParamAnd(dic);
            //将前者条件和日期条件进行拼接
            if (sqlWhere != "1=1")
            {
                sqlWhere = sqlWhere + " and " + strDate;
            }
            else
            {
                sqlWhere = strDate;
            }

            int recordCount;
            DataSet ds = bookInfoBLL.MyGetListByPage(Pager.PageSize, Pager.CurrentPageIndex, string.Empty, sqlWhere, out recordCount);

            this.Repeater1.DataSource = ds.Tables[0];
            this.Repeater1.DataBind();

            Pager.RecordCount = recordCount;
            Pager.CustomInfoHTML = MyBase.SetPagerStyle(Pager.CurrentPageIndex, Pager.PageCount, ds.Tables[0].Rows.Count, recordCount);
        }

        /// <summary>
        /// 点击查询按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void nlbtList_Click(object sender, EventArgs e)
        {
            Pager.CurrentPageIndex = 1;
            DataBindToRepeater();
        }

        protected void Pager_PageChanged(object sender, EventArgs e)
        {
            DataBindToRepeater();
        }

        protected void nlbtRefresh_Click(object sender, EventArgs e)
        {
            this.DataBindToRepeater();
        }
    }
}