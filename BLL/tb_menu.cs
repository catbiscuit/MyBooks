using System;
using System.Data;
using System.Collections.Generic;
using Maticsoft.Common;
using web.Model;
namespace web.BLL
{
	/// <summary>
	/// tb_menu
	/// </summary>
	public partial class tb_menu
	{
		private readonly web.DAL.tb_menu dal=new web.DAL.tb_menu();
		public tb_menu()
		{}
		#region  BasicMethod
		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string menu_id)
		{
			return dal.Exists(menu_id);
		}

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_menu model)
		{
			return dal.Add(model);
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(web.Model.tb_menu model)
		{
			return dal.Update(model);
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string menu_id)
		{
			
			return dal.Delete(menu_id);
		}
		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool DeleteList(string menu_idlist )
		{
			return dal.DeleteList(Maticsoft.Common.PageValidate.SafeLongFilter(menu_idlist,0) );
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public web.Model.tb_menu GetModel(string menu_id)
		{
			
			return dal.GetModel(menu_id);
		}

		/// <summary>
		/// 得到一个对象实体，从缓存中
		/// </summary>
		public web.Model.tb_menu GetModelByCache(string menu_id)
		{
			
			string CacheKey = "tb_menuModel-" + menu_id;
			object objModel = Maticsoft.Common.DataCache.GetCache(CacheKey);
			if (objModel == null)
			{
				try
				{
					objModel = dal.GetModel(menu_id);
					if (objModel != null)
					{
						int ModelCache = Maticsoft.Common.ConfigHelper.GetConfigInt("ModelCache");
						Maticsoft.Common.DataCache.SetCache(CacheKey, objModel, DateTime.Now.AddMinutes(ModelCache), TimeSpan.Zero);
					}
				}
				catch{}
			}
			return (web.Model.tb_menu)objModel;
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
		public List<web.Model.tb_menu> GetModelList(string strWhere)
		{
			DataSet ds = dal.GetList(strWhere);
			return DataTableToList(ds.Tables[0]);
		}
		/// <summary>
		/// 获得数据列表
		/// </summary>
		public List<web.Model.tb_menu> DataTableToList(DataTable dt)
		{
			List<web.Model.tb_menu> modelList = new List<web.Model.tb_menu>();
			int rowsCount = dt.Rows.Count;
			if (rowsCount > 0)
			{
				web.Model.tb_menu model;
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

        public web.Model.tb_menu DataRowToModel(DataRow row)
        {
            return dal.DataRowToModel(row);
        }

        #endregion  BasicMethod
        #region  ExtensionMethod
        public DataSet MyGetManagerMenuList(int user_id)
        {
            return dal.MyGetManagerMenuList(user_id);
        }
		#endregion  ExtensionMethod
	}
}

