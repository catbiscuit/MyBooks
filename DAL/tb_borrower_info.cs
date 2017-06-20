using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_borrower_info
	/// </summary>
	public partial class tb_borrower_info
	{
		public tb_borrower_info()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_borrower_info");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,50)			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_borrower_info model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_borrower_info(");
			strSql.Append("id,name,gender,grade,card_id)");
			strSql.Append(" values (");
			strSql.Append("@id,@name,@gender,@grade,@card_id)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,50),
					new SqlParameter("@name", SqlDbType.NChar,10),
					new SqlParameter("@gender", SqlDbType.Bit,1),
					new SqlParameter("@grade", SqlDbType.NChar,10),
					new SqlParameter("@card_id", SqlDbType.VarChar,50)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.name;
			parameters[2].Value = model.gender;
			parameters[3].Value = model.grade;
			parameters[4].Value = model.card_id;

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
		public bool Update(web.Model.tb_borrower_info model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_borrower_info set ");
			strSql.Append("name=@name,");
			strSql.Append("gender=@gender,");
			strSql.Append("grade=@grade,");
			strSql.Append("card_id=@card_id");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@name", SqlDbType.NChar,10),
					new SqlParameter("@gender", SqlDbType.Bit,1),
					new SqlParameter("@grade", SqlDbType.NChar,10),
					new SqlParameter("@card_id", SqlDbType.VarChar,50),
					new SqlParameter("@id", SqlDbType.VarChar,50)};
			parameters[0].Value = model.name;
			parameters[1].Value = model.gender;
			parameters[2].Value = model.grade;
			parameters[3].Value = model.card_id;
			parameters[4].Value = model.id;

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
			strSql.Append("delete from tb_borrower_info ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,50)			};
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
			strSql.Append("delete from tb_borrower_info ");
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
		public web.Model.tb_borrower_info GetModel(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,name,gender,grade,card_id from tb_borrower_info ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,50)			};
			parameters[0].Value = id;

			web.Model.tb_borrower_info model=new web.Model.tb_borrower_info();
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
		public web.Model.tb_borrower_info DataRowToModel(DataRow row)
		{
			web.Model.tb_borrower_info model=new web.Model.tb_borrower_info();
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
				if(row["gender"]!=null && row["gender"].ToString()!="")
				{
					if((row["gender"].ToString()=="1")||(row["gender"].ToString().ToLower()=="true"))
					{
						model.gender=true;
					}
					else
					{
						model.gender=false;
					}
				}
				if(row["grade"]!=null)
				{
					model.grade=row["grade"].ToString();
				}
				if(row["card_id"]!=null)
				{
					model.card_id=row["card_id"].ToString();
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
			strSql.Append("select id,name,gender,grade,card_id ");
			strSql.Append(" FROM tb_borrower_info ");
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
			strSql.Append(" id,name,gender,grade,card_id ");
			strSql.Append(" FROM tb_borrower_info ");
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
			strSql.Append("select count(1) FROM tb_borrower_info ");
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
			strSql.Append(")AS Row, T.*  from tb_borrower_info T ");
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
			parameters[0].Value = "tb_borrower_info";
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
        /// 执行Sql语句
        /// </summary>
        public DataSet GetListBySql(string strSql)
        {
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 根据联合查询返回带分页的数据
        /// </summary>
        /// <param name="strBaseSql"></param>
        /// <param name="strWhere"></param>
        /// <param name="orderby"></param>
        /// <param name="startIndex"></param>
        /// <param name="endIndex"></param>
        /// <param name="recordcount"></param>
        /// <returns></returns>
        public DataSet MyGetListByePage(string strBaseSql, string strWhere, string orderby, int startIndex, int endIndex, out int recordcount)
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
                strSql.Append("order by card_id ");
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

        /// <summary>
        /// 总的数据行
        /// </summary>
        /// <param name="orderby"></param>
        /// <param name="strBaseSql"></param>
        /// <param name="strWhere"></param>
        /// <returns></returns>
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
                strSql.Append("order by card_id ");
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

        #endregion  ExtensionMethod
    }
}

