using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_borrow_again
	/// </summary>
	public partial class tb_borrow_again
	{
		public tb_borrow_again()
		{}
		#region  BasicMethod



		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_borrow_again model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_borrow_again(");
			strSql.Append("id,book_borrow_id,again_date,again_intime,manager)");
			strSql.Append(" values (");
			strSql.Append("@id,@book_borrow_id,@again_date,@again_intime,@manager)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4),
					new SqlParameter("@book_borrow_id", SqlDbType.NVarChar,50),
					new SqlParameter("@again_date", SqlDbType.DateTime),
					new SqlParameter("@again_intime", SqlDbType.DateTime),
					new SqlParameter("@manager", SqlDbType.NVarChar,10)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.book_borrow_id;
			parameters[2].Value = model.again_date;
			parameters[3].Value = model.again_intime;
			parameters[4].Value = model.manager;

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
		public bool Update(web.Model.tb_borrow_again model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_borrow_again set ");
			strSql.Append("id=@id,");
			strSql.Append("book_borrow_id=@book_borrow_id,");
			strSql.Append("again_date=@again_date,");
			strSql.Append("again_intime=@again_intime,");
			strSql.Append("manager=@manager");
			strSql.Append(" where ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4),
					new SqlParameter("@book_borrow_id", SqlDbType.NVarChar,50),
					new SqlParameter("@again_date", SqlDbType.DateTime),
					new SqlParameter("@again_intime", SqlDbType.DateTime),
					new SqlParameter("@manager", SqlDbType.NVarChar,10)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.book_borrow_id;
			parameters[2].Value = model.again_date;
			parameters[3].Value = model.again_intime;
			parameters[4].Value = model.manager;

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
		public bool Delete()
		{
			//该表无主键信息，请自定义主键/条件字段
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_borrow_again ");
			strSql.Append(" where ");
			SqlParameter[] parameters = {
			};

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
		/// 得到一个对象实体
		/// </summary>
		public web.Model.tb_borrow_again GetModel()
		{
			//该表无主键信息，请自定义主键/条件字段
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,book_borrow_id,again_date,again_intime,manager from tb_borrow_again ");
			strSql.Append(" where ");
			SqlParameter[] parameters = {
			};

			web.Model.tb_borrow_again model=new web.Model.tb_borrow_again();
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
		public web.Model.tb_borrow_again DataRowToModel(DataRow row)
		{
			web.Model.tb_borrow_again model=new web.Model.tb_borrow_again();
			if (row != null)
			{
				if(row["id"]!=null && row["id"].ToString()!="")
				{
					model.id=int.Parse(row["id"].ToString());
				}
				if(row["book_borrow_id"]!=null)
				{
					model.book_borrow_id=row["book_borrow_id"].ToString();
				}
				if(row["again_date"]!=null && row["again_date"].ToString()!="")
				{
					model.again_date=DateTime.Parse(row["again_date"].ToString());
				}
				if(row["again_intime"]!=null && row["again_intime"].ToString()!="")
				{
					model.again_intime=DateTime.Parse(row["again_intime"].ToString());
				}
				if(row["manager"]!=null)
				{
					model.manager=row["manager"].ToString();
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
			strSql.Append("select id,book_borrow_id,again_date,again_intime,manager ");
			strSql.Append(" FROM tb_borrow_again ");
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
			strSql.Append(" id,book_borrow_id,again_date,again_intime,manager ");
			strSql.Append(" FROM tb_borrow_again ");
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
			strSql.Append("select count(1) FROM tb_borrow_again ");
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
				strSql.Append("order by T.id desc");
			}
			strSql.Append(")AS Row, T.*  from tb_borrow_again T ");
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
			parameters[0].Value = "tb_borrow_again";
			parameters[1].Value = "id";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

