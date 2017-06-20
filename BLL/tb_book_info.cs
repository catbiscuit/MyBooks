using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using web.Model;
namespace web.BLL
{
	/// <summary>
	/// tb_book_info
	/// </summary>
	public partial class tb_book_info
	{
		private readonly web.DAL.tb_book_info dal=new web.DAL.tb_book_info();
		public tb_book_info()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			return dal.Exists(id);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_book_info model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(web.Model.tb_book_info model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string id)
		{
			
			return dal.Delete(id);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string idlist )
		{
			return dal.DeleteList(Maticsoft.Common.PageValidate.SafeLongFilter(idlist,0) );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public web.Model.tb_book_info GetModel(string id)
		{
			
			return dal.GetModel(id);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public web.Model.tb_book_info GetModelByCache(string id)
		{
			
			string CacheKey = "tb_book_infoModel-" + id;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(id);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (web.Model.tb_book_info)objModel;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			return dal.GetList(strWhere);
		}
		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			return dal.GetList(Top,strWhere,filedOrder);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<web.Model.tb_book_info> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<web.Model.tb_book_info> DataTableToList(DataTable dt)
		{
			List<web.Model.tb_book_info> modelList = new List<web.Model.tb_book_info>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				web.Model.tb_book_info model;
				for (int n = 0; n < rowsCount; n++)
				{
					model = dal.DataRowToModel(dt.Rows[n]);
					if (model != null)
					{
						modelList.Add(model);
					}
				}
			}
			return modelList;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetAllList()
		{
			return GetList("");
		}

		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			return dal.GetRecordCount(strWhere);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			return dal.GetListByPage( strWhere,  orderby,  startIndex,  endIndex);
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		//public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		//{
			//return dal.GetList(PageSize,PageIndex,strWhere);
		//}

		#endregion  BasicMethod
   #region  ExtensionMethod
        public DataSet MyGetListByPage(int PageSize, int PageIndex, string orderby, string strWhere, out int recordcount)
        {
            return dal.MyGetListByePage(strWhere, orderby, (PageIndex - 1) * PageSize + 1, PageIndex * PageSize, out recordcount);
        }

        /// <summary>
        /// 执行基本的sql语句(含有分页)
        /// </summary>
        /// <param name="PageSize">页码数据条数</param>
        /// <param name="PageIndex">页码下标，第多少页</param>
        /// <param name="orderby">排序规则</param>
        /// <param name="strWhere">查询条件</param>
        /// <param name="srtSql">基础的sql语句</param>
        /// <param name="recordcount">总的记录条数</param>
        /// <returns></returns>
        public DataSet MyBaseListByPage(int PageSize, int PageIndex, string orderby, string strWhere, string strSql, out int recordcount)
        {
            return dal.MyBaseListByPage((PageIndex - 1) * PageSize + 1, PageIndex * PageSize, orderby, strWhere, strSql, out recordcount);
        }

        /// <summary>
        /// 执行基本的sql语句(没有分页)
        /// </summary>
        /// <param name="orderby"></param>
        /// <param name="strWhere"></param>
        /// <param name="strSql"></param>
        /// <returns></returns>
        public DataSet MyBaseList(string orderby, string strWhere, string strSql)
        {
            return dal.MyBaseList(orderby, strWhere, strSql);
        }
        /// <summary>
        /// 执行借阅统计的分页存储过程
        /// </summary>
        /// <param name="strBegin">借阅时间开始</param>
        /// <param name="strEnd">借阅时间结束</param>
        /// <param name="orderby">排序规则</param>
        /// <param name="PageSize">分页大小</param>
        /// <param name="PageIndex">分页页码</param>
        /// <param name="recordcount">总的记录数</param>
        /// <returns></returns>
        public DataSet MySPGetBorrowList(string strBegin, string strEnd, string orderby, int PageSize, int PageIndex, out int recordcount)
        {
            return dal.MySPGetBorrowList(strBegin, strEnd, orderby, (PageIndex - 1) * PageSize + 1, PageIndex * PageSize, out recordcount);
        }
        /// <summary>
        /// 执行图书分类的存储过程
        /// </summary>
        /// <returns></returns>
        public DataSet MySPGetTypeList()
        {
            return dal.MySPGetTypeList();
        }

        #endregion  ExtensionMethod
	}
}

