using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_menu
	/// </summary>
	public partial class tb_menu
	{
		public tb_menu()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string menu_id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_menu");
			strSql.Append(" where menu_id=@menu_id ");
			SqlParameter[] parameters = {
					new SqlParameter("@menu_id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = menu_id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_menu model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_menu(");
			strSql.Append("menu_id,menu_parent_id,menu_name,menu_url,menu_level,menu_sort)");
			strSql.Append(" values (");
			strSql.Append("@menu_id,@menu_parent_id,@menu_name,@menu_url,@menu_level,@menu_sort)");
			SqlParameter[] parameters = {
					new SqlParameter("@menu_id", SqlDbType.NVarChar,20),
					new SqlParameter("@menu_parent_id", SqlDbType.NVarChar,20),
					new SqlParameter("@menu_name", SqlDbType.NVarChar,50),
					new SqlParameter("@menu_url", SqlDbType.NVarChar,200),
					new SqlParameter("@menu_level", SqlDbType.Int,4),
					new SqlParameter("@menu_sort", SqlDbType.Int,4)};
			parameters[0].Value = model.menu_id;
			parameters[1].Value = model.menu_parent_id;
			parameters[2].Value = model.menu_name;
			parameters[3].Value = model.menu_url;
			parameters[4].Value = model.menu_level;
			parameters[5].Value = model.menu_sort;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(web.Model.tb_menu model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_menu set ");
			strSql.Append("menu_parent_id=@menu_parent_id,");
			strSql.Append("menu_name=@menu_name,");
			strSql.Append("menu_url=@menu_url,");
			strSql.Append("menu_level=@menu_level,");
			strSql.Append("menu_sort=@menu_sort");
			strSql.Append(" where menu_id=@menu_id ");
			SqlParameter[] parameters = {
					new SqlParameter("@menu_parent_id", SqlDbType.NVarChar,20),
					new SqlParameter("@menu_name", SqlDbType.NVarChar,50),
					new SqlParameter("@menu_url", SqlDbType.NVarChar,200),
					new SqlParameter("@menu_level", SqlDbType.Int,4),
					new SqlParameter("@menu_sort", SqlDbType.Int,4),
					new SqlParameter("@menu_id", SqlDbType.NVarChar,20)};
			parameters[0].Value = model.menu_parent_id;
			parameters[1].Value = model.menu_name;
			parameters[2].Value = model.menu_url;
			parameters[3].Value = model.menu_level;
			parameters[4].Value = model.menu_sort;
			parameters[5].Value = model.menu_id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(string menu_id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_menu ");
			strSql.Append(" where menu_id=@menu_id ");
			SqlParameter[] parameters = {
					new SqlParameter("@menu_id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = menu_id;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string menu_idlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_menu ");
			strSql.Append(" where menu_id in ("+menu_idlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public web.Model.tb_menu GetModel(string menu_id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 menu_id,menu_parent_id,menu_name,menu_url,menu_level,menu_sort from tb_menu ");
			strSql.Append(" where menu_id=@menu_id ");
			SqlParameter[] parameters = {
					new SqlParameter("@menu_id", SqlDbType.NVarChar,20)			};
			parameters[0].Value = menu_id;

			web.Model.tb_menu model=new web.Model.tb_menu();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public web.Model.tb_menu DataRowToModel(DataRow row)
		{
			web.Model.tb_menu model=new web.Model.tb_menu();
			if (row != null)
			{
				if(row["menu_id"]!=null)
				{
					model.menu_id=row["menu_id"].ToString();
				}
				if(row["menu_parent_id"]!=null)
				{
					model.menu_parent_id=row["menu_parent_id"].ToString();
				}
				if(row["menu_name"]!=null)
				{
					model.menu_name=row["menu_name"].ToString();
				}
				if(row["menu_url"]!=null)
				{
					model.menu_url=row["menu_url"].ToString();
				}
				if(row["menu_level"]!=null && row["menu_level"].ToString()!="")
				{
					model.menu_level=int.Parse(row["menu_level"].ToString());
				}
				if(row["menu_sort"]!=null && row["menu_sort"].ToString()!="")
				{
					model.menu_sort=int.Parse(row["menu_sort"].ToString());
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select menu_id,menu_parent_id,menu_name,menu_url,menu_level,menu_sort ");
			strSql.Append(" FROM tb_menu ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" menu_id,menu_parent_id,menu_name,menu_url,menu_level,menu_sort ");
			strSql.Append(" FROM tb_menu ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM tb_menu ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.menu_id desc");
			}
			strSql.Append(")AS Row, T.*  from tb_menu T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

        /*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "tb_menu";
			parameters[1].Value = "menu_id";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

        #endregion  BasicMethod
        #region  ExtensionMethod
        public DataSet MyGetManagerMenuList(int user_id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT [tb_menu].[menu_id]");
            strSql.Append(",[tb_menu].[menu_parent_id]");
            strSql.Append(",[tb_menu].[menu_name]");
            strSql.Append(",[tb_menu].[menu_url]");
            strSql.Append(",[tb_menu].[menu_level]");
            strSql.Append(",[tb_menu].[menu_sort]");
            strSql.Append("FROM [tb_menu_manager] inner join [tb_menu] on [tb_menu_manager].menu_id=[tb_menu].menu_id ");
            strSql.AppendFormat("where [tb_menu_manager].user_id={0}",user_id);
            return DbHelperSQL.Query(strSql.ToString());
        }
        #endregion  ExtensionMethod
    }
}

