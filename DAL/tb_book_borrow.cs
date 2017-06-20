using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_book_borrow
	/// </summary>
	public partial class tb_book_borrow
	{
		public tb_book_borrow()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_book_borrow");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50)			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_book_borrow model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_book_borrow(");
			strSql.Append("id,book_id,borrow_id,out_time,in_time,reality_time,again_count)");
			strSql.Append(" values (");
			strSql.Append("@id,@book_id,@borrow_id,@out_time,@in_time,@reality_time,@again_count)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50),
					new SqlParameter("@book_id", SqlDbType.NVarChar,50),
					new SqlParameter("@borrow_id", SqlDbType.NVarChar,50),
					new SqlParameter("@out_time", SqlDbType.DateTime),
					new SqlParameter("@in_time", SqlDbType.DateTime),
					new SqlParameter("@reality_time", SqlDbType.DateTime),
					new SqlParameter("@again_count", SqlDbType.Int,4)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.book_id;
			parameters[2].Value = model.borrow_id;
			parameters[3].Value = model.out_time;
			parameters[4].Value = model.in_time;
			parameters[5].Value = model.reality_time;
			parameters[6].Value = model.again_count;

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
		public bool Update(web.Model.tb_book_borrow model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_book_borrow set ");
			strSql.Append("book_id=@book_id,");
			strSql.Append("borrow_id=@borrow_id,");
			strSql.Append("out_time=@out_time,");
			strSql.Append("in_time=@in_time,");
			strSql.Append("reality_time=@reality_time,");
			strSql.Append("again_count=@again_count");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@book_id", SqlDbType.NVarChar,50),
					new SqlParameter("@borrow_id", SqlDbType.NVarChar,50),
					new SqlParameter("@out_time", SqlDbType.DateTime),
					new SqlParameter("@in_time", SqlDbType.DateTime),
					new SqlParameter("@reality_time", SqlDbType.DateTime),
					new SqlParameter("@again_count", SqlDbType.Int,4),
					new SqlParameter("@id", SqlDbType.NVarChar,50)};
			parameters[0].Value = model.book_id;
			parameters[1].Value = model.borrow_id;
			parameters[2].Value = model.out_time;
			parameters[3].Value = model.in_time;
			parameters[4].Value = model.reality_time;
			parameters[5].Value = model.again_count;
			parameters[6].Value = model.id;

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
		public bool Delete(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_book_borrow ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50)			};
			parameters[0].Value = id;

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
		public bool DeleteList(string idlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_book_borrow ");
			strSql.Append(" where id in ("+idlist + ")  ");
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
		public web.Model.tb_book_borrow GetModel(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,book_id,borrow_id,out_time,in_time,reality_time,again_count from tb_book_borrow ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50)			};
			parameters[0].Value = id;

			web.Model.tb_book_borrow model=new web.Model.tb_book_borrow();
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
		public web.Model.tb_book_borrow DataRowToModel(DataRow row)
		{
			web.Model.tb_book_borrow model=new web.Model.tb_book_borrow();
			if (row != null)
			{
				if(row["id"]!=null)
				{
					model.id=row["id"].ToString();
				}
				if(row["book_id"]!=null)
				{
					model.book_id=row["book_id"].ToString();
				}
				if(row["borrow_id"]!=null)
				{
					model.borrow_id=row["borrow_id"].ToString();
				}
				if(row["out_time"]!=null && row["out_time"].ToString()!="")
				{
					model.out_time=DateTime.Parse(row["out_time"].ToString());
				}
				if(row["in_time"]!=null && row["in_time"].ToString()!="")
				{
					model.in_time=DateTime.Parse(row["in_time"].ToString());
				}
				if(row["reality_time"]!=null && row["reality_time"].ToString()!="")
				{
					model.reality_time=DateTime.Parse(row["reality_time"].ToString());
				}
				if(row["again_count"]!=null && row["again_count"].ToString()!="")
				{
					model.again_count=int.Parse(row["again_count"].ToString());
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
			strSql.Append("select id,book_id,borrow_id,out_time,in_time,reality_time,again_count ");
			strSql.Append(" FROM tb_book_borrow ");
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
			strSql.Append(" id,book_id,borrow_id,out_time,in_time,reality_time,again_count ");
			strSql.Append(" FROM tb_book_borrow ");
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
			strSql.Append("select count(1) FROM tb_book_borrow ");
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
			strSql.Append(")AS Row, T.*  from tb_book_borrow T ");
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
			parameters[0].Value = "tb_book_borrow";
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

