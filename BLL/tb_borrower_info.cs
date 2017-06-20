using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using web.Model;
namespace web.BLL
{
	/// <summary>
	/// tb_borrower_info
	/// </summary>
	public partial class tb_borrower_info
	{
		private readonly web.DAL.tb_borrower_info dal=new web.DAL.tb_borrower_info();
		public tb_borrower_info()
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
		public bool Add(web.Model.tb_borrower_info model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(web.Model.tb_borrower_info model)
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
		public web.Model.tb_borrower_info GetModel(string id)
		{
			
			return dal.GetModel(id);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public web.Model.tb_borrower_info GetModelByCache(string id)
		{
			
			string CacheKey = "tb_borrower_infoModel-" + id;
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
			return (web.Model.tb_borrower_info)objModel;
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
		public List<web.Model.tb_borrower_info> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<web.Model.tb_borrower_info> DataTableToList(DataTable dt)
		{
			List<web.Model.tb_borrower_info> modelList = new List<web.Model.tb_borrower_info>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				web.Model.tb_borrower_info model;
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
        public DataSet GetListBySql(string sqlStr)
        {
            return dal.GetListBySql(sqlStr);
        }

        public web.Model.tb_borrower_info MyDataRowToModel(DataRow row)
        {
            return dal.DataRowToModel(row);
        }

        /// <summary>
        /// 读者信息(停借和丢失)管理列表
        /// </summary>
        /// <param name="PageSize"></param>
        /// <param name="PageIndex"></param>
        /// <param name="orderby"></param>
        /// <param name="strWhere"></param>
        /// <param name="recordcount"></param>
        /// <returns></returns>
        public DataSet MyGetBorrowerInfoPageList(int PageSize, int PageIndex, string orderby, string strWhere, out int recordcount)
        {
            string strSql= " tb_borrow_card.id as cardid,tb_borrow_card.handle_time,tb_borrow_card.valid_time,tb_borrow_card.ic_card,tb_borrow_card.phone,tb_borrow_card.lose,tb_borrow_card.stop,tb_borrower_info.id as borrowerid,tb_borrower_info.name,tb_borrower_info.gender,tb_borrower_info.grade from  tb_borrow_card full outer join  tb_borrower_info on tb_borrow_card.id = tb_borrower_info.card_id";
            return dal.MyGetListByePage(strSql,strWhere, orderby, (PageIndex - 1) * PageSize + 1, PageIndex * PageSize, out recordcount);
        }

        #region 挂失和停借管理单独的方法
        /// <summary>
        /// 读者挂失管理列表
        /// </summary>
        /// <param name="PageSize"></param>
        /// <param name="PageIndex"></param>
        /// <param name="orderby"></param>
        /// <param name="strWhere"></param>
        /// <param name="recordcount"></param>
        /// <returns></returns>
        //public DataSet MyGetLostPageList(int PageSize, int PageIndex, string orderby, string strWhere, out int recordcount)
        //{
        //    string strSql = " tb_borrow_card.id as cardid,tb_borrow_card.handle_time,tb_borrow_card.valid_time,tb_borrow_card.ic_card,tb_borrow_card.phone,tb_borrow_card.lose,tb_borrower_info.id as borrowerid,tb_borrower_info.name,tb_borrower_info.gender,tb_borrower_info.grade from  tb_borrow_card full outer join  tb_borrower_info on tb_borrow_card.id = tb_borrower_info.card_id";
        //    return dal.MyGetListByePage(strSql, strWhere, orderby, (PageIndex - 1) * PageSize + 1, PageIndex * PageSize, out recordcount);
        //}

        /// <summary>
        /// 读者停借管理列表
        /// </summary>
        /// <param name="PageSize"></param>
        /// <param name="PageIndex"></param>
        /// <param name="orderby"></param>
        /// <param name="strWhere"></param>
        /// <param name="recordcount"></param>
        /// <returns></returns>
        //public DataSet MyGetStopPageList(int PageSize, int PageIndex, string orderby, string strWhere, out int recordcount)
        //{
        //    string strSql = " tb_borrow_card.id as cardid,tb_borrow_card.handle_time,tb_borrow_card.valid_time,tb_borrow_card.ic_card,tb_borrow_card.phone,tb_borrow_card.stop,tb_borrower_info.id as borrowerid,tb_borrower_info.name,tb_borrower_info.gender,tb_borrower_info.grade from  tb_borrow_card full outer join  tb_borrower_info on tb_borrow_card.id = tb_borrower_info.card_id";
        //    return dal.MyGetListByePage(strSql, strWhere, orderby, (PageIndex - 1) * PageSize + 1, PageIndex * PageSize, out recordcount);
        //}
        #endregion

        #endregion  ExtensionMethod
    }
}

