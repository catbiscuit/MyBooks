using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_book_lost
	/// </summary>
	public partial class tb_book_lost
	{
		public tb_book_lost()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("id", "tb_book_lost"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_book_lost");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(web.Model.tb_book_lost model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_book_lost(");
			strSql.Append("borrow_id,borrow_name,book_id,book_ISBN,book_name,book_publisher,book_author,book_price,submit_date,fine_money,manager)");
			strSql.Append(" values (");
			strSql.Append("@borrow_id,@borrow_name,@book_id,@book_ISBN,@book_name,@book_publisher,@book_author,@book_price,@submit_date,@fine_money,@manager)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@borrow_id", SqlDbType.NChar,50),
					new SqlParameter("@borrow_name", SqlDbType.NChar,10),
					new SqlParameter("@book_id", SqlDbType.NChar,50),
					new SqlParameter("@book_ISBN", SqlDbType.NChar,10),
					new SqlParameter("@book_name", SqlDbType.NChar,10),
					new SqlParameter("@book_publisher", SqlDbType.NChar,10),
					new SqlParameter("@book_author", SqlDbType.NChar,10),
					new SqlParameter("@book_price", SqlDbType.Float,8),
					new SqlParameter("@submit_date", SqlDbType.DateTime),
					new SqlParameter("@fine_money", SqlDbType.Float,8),
					new SqlParameter("@manager", SqlDbType.NChar,10)};
			parameters[0].Value = model.borrow_id;
			parameters[1].Value = model.borrow_name;
			parameters[2].Value = model.book_id;
			parameters[3].Value = model.book_ISBN;
			parameters[4].Value = model.book_name;
			parameters[5].Value = model.book_publisher;
			parameters[6].Value = model.book_author;
			parameters[7].Value = model.book_price;
			parameters[8].Value = model.submit_date;
			parameters[9].Value = model.fine_money;
			parameters[10].Value = model.manager;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
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
		/// 更新一条数据
		/// </summary>
		public bool Update(web.Model.tb_book_lost model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_book_lost set ");
			strSql.Append("borrow_id=@borrow_id,");
			strSql.Append("borrow_name=@borrow_name,");
			strSql.Append("book_id=@book_id,");
			strSql.Append("book_ISBN=@book_ISBN,");
			strSql.Append("book_name=@book_name,");
			strSql.Append("book_publisher=@book_publisher,");
			strSql.Append("book_author=@book_author,");
			strSql.Append("book_price=@book_price,");
			strSql.Append("submit_date=@submit_date,");
			strSql.Append("fine_money=@fine_money,");
			strSql.Append("manager=@manager");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@borrow_id", SqlDbType.NChar,50),
					new SqlParameter("@borrow_name", SqlDbType.NChar,10),
					new SqlParameter("@book_id", SqlDbType.NChar,50),
					new SqlParameter("@book_ISBN", SqlDbType.NChar,10),
					new SqlParameter("@book_name", SqlDbType.NChar,10),
					new SqlParameter("@book_publisher", SqlDbType.NChar,10),
					new SqlParameter("@book_author", SqlDbType.NChar,10),
					new SqlParameter("@book_price", SqlDbType.Float,8),
					new SqlParameter("@submit_date", SqlDbType.DateTime),
					new SqlParameter("@fine_money", SqlDbType.Float,8),
					new SqlParameter("@manager", SqlDbType.NChar,10),
					new SqlParameter("@id", SqlDbType.Int,4)};
			parameters[0].Value = model.borrow_id;
			parameters[1].Value = model.borrow_name;
			parameters[2].Value = model.book_id;
			parameters[3].Value = model.book_ISBN;
			parameters[4].Value = model.book_name;
			parameters[5].Value = model.book_publisher;
			parameters[6].Value = model.book_author;
			parameters[7].Value = model.book_price;
			parameters[8].Value = model.submit_date;
			parameters[9].Value = model.fine_money;
			parameters[10].Value = model.manager;
			parameters[11].Value = model.id;

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
		public bool Delete(int id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_book_lost ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
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
			strSql.Append("delete from tb_book_lost ");
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
		public web.Model.tb_book_lost GetModel(int id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,borrow_id,borrow_name,book_id,book_ISBN,book_name,book_publisher,book_author,book_price,submit_date,fine_money,manager from tb_book_lost ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

			web.Model.tb_book_lost model=new web.Model.tb_book_lost();
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
		public web.Model.tb_book_lost DataRowToModel(DataRow row)
		{
			web.Model.tb_book_lost model=new web.Model.tb_book_lost();
			if (row != null)
			{
				if(row["id"]!=null && row["id"].ToString()!="")
				{
					model.id=int.Parse(row["id"].ToString());
				}
				if(row["borrow_id"]!=null)
				{
					model.borrow_id=row["borrow_id"].ToString();
				}
				if(row["borrow_name"]!=null)
				{
					model.borrow_name=row["borrow_name"].ToString();
				}
				if(row["book_id"]!=null)
				{
					model.book_id=row["book_id"].ToString();
				}
				if(row["book_ISBN"]!=null)
				{
					model.book_ISBN=row["book_ISBN"].ToString();
				}
				if(row["book_name"]!=null)
				{
					model.book_name=row["book_name"].ToString();
				}
				if(row["book_publisher"]!=null)
				{
					model.book_publisher=row["book_publisher"].ToString();
				}
				if(row["book_author"]!=null)
				{
					model.book_author=row["book_author"].ToString();
				}
				if(row["book_price"]!=null && row["book_price"].ToString()!="")
				{
					model.book_price=decimal.Parse(row["book_price"].ToString());
				}
				if(row["submit_date"]!=null && row["submit_date"].ToString()!="")
				{
					model.submit_date=DateTime.Parse(row["submit_date"].ToString());
				}
				if(row["fine_money"]!=null && row["fine_money"].ToString()!="")
				{
					model.fine_money=decimal.Parse(row["fine_money"].ToString());
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
			strSql.Append("select id,borrow_id,borrow_name,book_id,book_ISBN,book_name,book_publisher,book_author,book_price,submit_date,fine_money,manager ");
			strSql.Append(" FROM tb_book_lost ");
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
			strSql.Append(" id,borrow_id,borrow_name,book_id,book_ISBN,book_name,book_publisher,book_author,book_price,submit_date,fine_money,manager ");
			strSql.Append(" FROM tb_book_lost ");
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
			strSql.Append("select count(1) FROM tb_book_lost ");
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
			strSql.Append(")AS Row, T.*  from tb_book_lost T ");
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
			parameters[0].Value = "tb_book_lost";
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
        /// <summary>
        /// 分页获取数据(tb_book_info)
        /// </summary>
        /// <param name="strWhere"></param>
        /// <param name="orderby"></param>
        /// <param name="startIndex"></param>
        /// <param name="endIndex"></param>
        /// <param name="recordcount"></param>
        /// <returns></returns>
        public DataSet MyGetListByePage(string strWhere, string orderby, int startIndex, int endIndex, out int recordcount)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by T." + orderby);
            }
            else
            {
                strSql.Append("order by T.id desc");
            }
            strSql.Append(")AS Row, T.*  from tb_book_lost T ");
            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }
            strSql.Append(" ) TT");
            strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
            DataSet ds = DbHelperSQL.Query(strSql.ToString());
            recordcount = GetRecordCount(strWhere);
            return ds;
        }
        #endregion  ExtensionMethod
    }
}

