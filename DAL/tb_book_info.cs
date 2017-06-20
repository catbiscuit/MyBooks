using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_book_info
	/// </summary>
	public partial class tb_book_info
	{
		public tb_book_info()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_book_info");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50)			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_book_info model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_book_info(");
			strSql.Append("id,name,spell,author,ISBN,publisher,language,price,lost,type,putin_time,status)");
			strSql.Append(" values (");
			strSql.Append("@id,@name,@spell,@author,@ISBN,@publisher,@language,@price,@lost,@type,@putin_time,@status)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50),
					new SqlParameter("@name", SqlDbType.NVarChar,50),
					new SqlParameter("@spell", SqlDbType.NVarChar,50),
					new SqlParameter("@author", SqlDbType.NVarChar,50),
					new SqlParameter("@ISBN", SqlDbType.NVarChar,100),
					new SqlParameter("@publisher", SqlDbType.NVarChar,50),
					new SqlParameter("@language", SqlDbType.NVarChar,50),
					new SqlParameter("@price", SqlDbType.Float,8),
					new SqlParameter("@lost", SqlDbType.Bit,1),
					new SqlParameter("@type", SqlDbType.NVarChar,50),
					new SqlParameter("@putin_time", SqlDbType.DateTime),
					new SqlParameter("@status", SqlDbType.Bit,1)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.name;
			parameters[2].Value = model.spell;
			parameters[3].Value = model.author;
			parameters[4].Value = model.ISBN;
			parameters[5].Value = model.publisher;
			parameters[6].Value = model.language;
			parameters[7].Value = model.price;
			parameters[8].Value = model.lost;
			parameters[9].Value = model.type;
			parameters[10].Value = model.putin_time;
			parameters[11].Value = model.status;

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
		public bool Update(web.Model.tb_book_info model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_book_info set ");
			strSql.Append("name=@name,");
			strSql.Append("spell=@spell,");
			strSql.Append("author=@author,");
			strSql.Append("ISBN=@ISBN,");
			strSql.Append("publisher=@publisher,");
			strSql.Append("language=@language,");
			strSql.Append("price=@price,");
			strSql.Append("lost=@lost,");
			strSql.Append("type=@type,");
			strSql.Append("putin_time=@putin_time,");
			strSql.Append("status=@status");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@name", SqlDbType.NVarChar,50),
					new SqlParameter("@spell", SqlDbType.NVarChar,50),
					new SqlParameter("@author", SqlDbType.NVarChar,50),
					new SqlParameter("@ISBN", SqlDbType.NVarChar,100),
					new SqlParameter("@publisher", SqlDbType.NVarChar,50),
					new SqlParameter("@language", SqlDbType.NVarChar,50),
					new SqlParameter("@price", SqlDbType.Float,8),
					new SqlParameter("@lost", SqlDbType.Bit,1),
					new SqlParameter("@type", SqlDbType.NVarChar,50),
					new SqlParameter("@putin_time", SqlDbType.DateTime),
					new SqlParameter("@status", SqlDbType.Bit,1),
					new SqlParameter("@id", SqlDbType.NVarChar,50)};
			parameters[0].Value = model.name;
			parameters[1].Value = model.spell;
			parameters[2].Value = model.author;
			parameters[3].Value = model.ISBN;
			parameters[4].Value = model.publisher;
			parameters[5].Value = model.language;
			parameters[6].Value = model.price;
			parameters[7].Value = model.lost;
			parameters[8].Value = model.type;
			parameters[9].Value = model.putin_time;
			parameters[10].Value = model.status;
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
		public bool Delete(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_book_info ");
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
			strSql.Append("delete from tb_book_info ");
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
		public web.Model.tb_book_info GetModel(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,name,spell,author,ISBN,publisher,language,price,lost,type,putin_time,status from tb_book_info ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.NVarChar,50)			};
			parameters[0].Value = id;

			web.Model.tb_book_info model=new web.Model.tb_book_info();
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
		public web.Model.tb_book_info DataRowToModel(DataRow row)
		{
			web.Model.tb_book_info model=new web.Model.tb_book_info();
			if (row != null)
			{
				if(row["id"]!=null)
				{
					model.id=row["id"].ToString();
				}
				if(row["name"]!=null)
				{
					model.name=row["name"].ToString();
				}
				if(row["spell"]!=null)
				{
					model.spell=row["spell"].ToString();
				}
				if(row["author"]!=null)
				{
					model.author=row["author"].ToString();
				}
				if(row["ISBN"]!=null)
				{
					model.ISBN=row["ISBN"].ToString();
				}
				if(row["publisher"]!=null)
				{
					model.publisher=row["publisher"].ToString();
				}
				if(row["language"]!=null)
				{
					model.language=row["language"].ToString();
				}
				if(row["price"]!=null && row["price"].ToString()!="")
				{
					model.price=decimal.Parse(row["price"].ToString());
				}
				if(row["lost"]!=null && row["lost"].ToString()!="")
				{
					if((row["lost"].ToString()=="1")||(row["lost"].ToString().ToLower()=="true"))
					{
						model.lost=true;
					}
					else
					{
						model.lost=false;
					}
				}
				if(row["type"]!=null)
				{
					model.type=row["type"].ToString();
				}
				if(row["putin_time"]!=null && row["putin_time"].ToString()!="")
				{
					model.putin_time=DateTime.Parse(row["putin_time"].ToString());
				}
				if(row["status"]!=null && row["status"].ToString()!="")
				{
					if((row["status"].ToString()=="1")||(row["status"].ToString().ToLower()=="true"))
					{
						model.status=true;
					}
					else
					{
						model.status=false;
					}
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
			strSql.Append("select id,name,spell,author,ISBN,publisher,language,price,lost,type,putin_time,status ");
			strSql.Append(" FROM tb_book_info ");
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
			strSql.Append(" id,name,spell,author,ISBN,publisher,language,price,lost,type,putin_time,status ");
			strSql.Append(" FROM tb_book_info ");
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
			strSql.Append("select count(1) FROM tb_book_info ");
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
			strSql.Append(")AS Row, T.*  from tb_book_info T ");
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
			parameters[0].Value = "tb_book_info";
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
            strSql.Append(")AS Row, T.*  from tb_book_info T ");
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

        /// <summary>
        /// 分页查询数据（联合查询），自定义查询字段
        /// </summary>
        /// <param name="startIndex"></param>
        /// <param name="endIndex"></param>
        /// <param name="orderby"></param>
        /// <param name="strWhere"></param>
        /// <param name="strBaseSql"></param>
        /// <param name="recordcount"></param>
        /// <returns></returns>
        public DataSet MyBaseListByPage(int startIndex, int endIndex, string orderby, string strWhere, string strBaseSql, out int recordcount)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by " + orderby);
            }
            else
            {
                strSql.Append("order by borrow_id ");
            }
            strSql.Append(")AS Row,");
            strSql.Append(strBaseSql);

            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" where " + strWhere);
            }

            strSql.Append(")as TT");
            strSql.AppendFormat(" WHERE Row between {0} and {1}", startIndex, endIndex);

            DataSet ds = DbHelperSQL.Query(strSql.ToString());
            recordcount = MyBaseGetSingle(orderby, strBaseSql, strWhere);
            return ds;
        }

        public DataSet MyBaseList(string orderby, string strWhere, string strBaseSql)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by " + orderby);
            }
            else
            {
                strSql.Append("order by borrow_id ");
            }
            strSql.Append(")AS Row,");
            strSql.Append(strBaseSql);

            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" where " + strWhere);
            }

            strSql.Append(")as TT");

            DataSet ds = DbHelperSQL.Query(strSql.ToString());
            return ds;
        }

        public int MyBaseGetSingle(string orderby, string strBaseSql, string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT count(1) FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by " + orderby);
            }
            else
            {
                strSql.Append("order by borrow_id ");
            }
            strSql.Append(")AS Row,");
            strSql.Append(strBaseSql);

            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }

            strSql.Append(")as TT");

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
        /// 执行查询的存储过程
        /// </summary>
        /// <param name="strBegin">开始时间</param>
        /// <param name="strEnd">结束时间</param>
        /// <param name="orderby">排序规则</param>
        /// <param name="startIndex">开始下标</param>
        /// <param name="endIndex">结束下标</param>
        /// <param name="recordcount">总的记录数</param>
        /// <returns></returns>
        public DataSet MySPGetBorrowList(string strBegin, string strEnd, string orderby, int startIndex, int endIndex, out int recordcount)
        {
            string strWhere = " where row between "+startIndex.ToString()+" and "+endIndex.ToString();
            IDataParameter[] paraments = {
                new SqlParameter("@dtBegin",SqlDbType.VarChar,50),
                new SqlParameter("@dtEnd",SqlDbType.VarChar,50),
                new SqlParameter("@orderBy",SqlDbType.VarChar,50),
                new SqlParameter("@strWhere",SqlDbType.VarChar,100)
            };
            paraments[0].Value = strBegin;
            paraments[1].Value = strEnd;
            paraments[2].Value = orderby;
            paraments[3].Value = strWhere;

            recordcount = MySPGetBorrowListSingle(strBegin,strEnd,orderby);

           return DbHelperSQL.RunProcedure("[dbo].[MyGetBorrowList]", paraments,"List");
            
        }

        /// <summary>
        /// 返回总的记录数
        /// </summary>
        /// <param name="strBegin"></param>
        /// <param name="strEnd"></param>
        /// <param name="orderby"></param>
        /// <returns></returns>
        public int MySPGetBorrowListSingle(string strBegin, string strEnd, string orderby)
        {
            int count = 0;
            string strWhere = " ";
            IDataParameter[] paraments = {
                new SqlParameter("@dtBegin",SqlDbType.VarChar,50),
                new SqlParameter("@dtEnd",SqlDbType.VarChar,50),
                new SqlParameter("@orderBy",SqlDbType.VarChar,50),
                new SqlParameter("@strWhere",SqlDbType.VarChar,100)
            };
            paraments[0].Value = strBegin;
            paraments[1].Value = strEnd;
            paraments[2].Value = orderby;
            paraments[3].Value = strWhere;

            return DbHelperSQL.RunProcedure("[dbo].[MyGetBorrowList]", paraments,out count);
        }

        public DataSet MySPGetTypeList()
        {
            return DbHelperSQL.RunProcedure("[dbo].[sp_tb_book_type_MyGetList]",new IDataParameter[] { },"List");
        }
        #endregion  ExtensionMethod
	}
}

