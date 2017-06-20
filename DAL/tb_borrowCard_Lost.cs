using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_borrowCard_Lost
	/// </summary>
	public partial class tb_borrowCard_Lost
	{
		public tb_borrowCard_Lost()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("id", "tb_borrowCard_Lost"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_borrowCard_Lost");
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
		public int Add(web.Model.tb_borrowCard_Lost model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_borrowCard_Lost(");
			strSql.Append("borrow_id,borrow_name,borrow_gender,borrow_card_id,lost_date,relieve_date,operater)");
			strSql.Append(" values (");
			strSql.Append("@borrow_id,@borrow_name,@borrow_gender,@borrow_card_id,@lost_date,@relieve_date,@operater)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@borrow_id", SqlDbType.NVarChar,50),
					new SqlParameter("@borrow_name", SqlDbType.NChar,10),
					new SqlParameter("@borrow_gender", SqlDbType.Bit,1),
					new SqlParameter("@borrow_card_id", SqlDbType.NVarChar,50),
					new SqlParameter("@lost_date", SqlDbType.DateTime),
					new SqlParameter("@relieve_date", SqlDbType.DateTime),
					new SqlParameter("@operater", SqlDbType.NChar,10)};
			parameters[0].Value = model.borrow_id;
			parameters[1].Value = model.borrow_name;
			parameters[2].Value = model.borrow_gender;
			parameters[3].Value = model.borrow_card_id;
			parameters[4].Value = model.lost_date;
			parameters[5].Value = model.relieve_date;
			parameters[6].Value = model.operater;

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
		public bool Update(web.Model.tb_borrowCard_Lost model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_borrowCard_Lost set ");
			strSql.Append("borrow_id=@borrow_id,");
			strSql.Append("borrow_name=@borrow_name,");
			strSql.Append("borrow_gender=@borrow_gender,");
			strSql.Append("borrow_card_id=@borrow_card_id,");
			strSql.Append("lost_date=@lost_date,");
			strSql.Append("relieve_date=@relieve_date,");
			strSql.Append("operater=@operater");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@borrow_id", SqlDbType.NVarChar,50),
					new SqlParameter("@borrow_name", SqlDbType.NChar,10),
					new SqlParameter("@borrow_gender", SqlDbType.Bit,1),
					new SqlParameter("@borrow_card_id", SqlDbType.NVarChar,50),
					new SqlParameter("@lost_date", SqlDbType.DateTime),
					new SqlParameter("@relieve_date", SqlDbType.DateTime),
					new SqlParameter("@operater", SqlDbType.NChar,10),
					new SqlParameter("@id", SqlDbType.Int,4)};
			parameters[0].Value = model.borrow_id;
			parameters[1].Value = model.borrow_name;
			parameters[2].Value = model.borrow_gender;
			parameters[3].Value = model.borrow_card_id;
			parameters[4].Value = model.lost_date;
			parameters[5].Value = model.relieve_date;
			parameters[6].Value = model.operater;
			parameters[7].Value = model.id;

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
			strSql.Append("delete from tb_borrowCard_Lost ");
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
			strSql.Append("delete from tb_borrowCard_Lost ");
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
		public web.Model.tb_borrowCard_Lost GetModel(int id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,borrow_id,borrow_name,borrow_gender,borrow_card_id,lost_date,relieve_date,operater from tb_borrowCard_Lost ");
			strSql.Append(" where id=@id");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.Int,4)
			};
			parameters[0].Value = id;

			web.Model.tb_borrowCard_Lost model=new web.Model.tb_borrowCard_Lost();
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
		public web.Model.tb_borrowCard_Lost DataRowToModel(DataRow row)
		{
			web.Model.tb_borrowCard_Lost model=new web.Model.tb_borrowCard_Lost();
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
				if(row["borrow_gender"]!=null && row["borrow_gender"].ToString()!="")
				{
					if((row["borrow_gender"].ToString()=="1")||(row["borrow_gender"].ToString().ToLower()=="true"))
					{
						model.borrow_gender=true;
					}
					else
					{
						model.borrow_gender=false;
					}
				}
				if(row["borrow_card_id"]!=null)
				{
					model.borrow_card_id=row["borrow_card_id"].ToString();
				}
				if(row["lost_date"]!=null && row["lost_date"].ToString()!="")
				{
					model.lost_date=DateTime.Parse(row["lost_date"].ToString());
				}
				if(row["relieve_date"]!=null && row["relieve_date"].ToString()!="")
				{
					model.relieve_date=DateTime.Parse(row["relieve_date"].ToString());
				}
				if(row["operater"]!=null)
				{
					model.operater=row["operater"].ToString();
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
			strSql.Append("select id,borrow_id,borrow_name,borrow_gender,borrow_card_id,lost_date,relieve_date,operater ");
			strSql.Append(" FROM tb_borrowCard_Lost ");
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
			strSql.Append(" id,borrow_id,borrow_name,borrow_gender,borrow_card_id,lost_date,relieve_date,operater ");
			strSql.Append(" FROM tb_borrowCard_Lost ");
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
			strSql.Append("select count(1) FROM tb_borrowCard_Lost ");
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
			strSql.Append(")AS Row, T.*  from tb_borrowCard_Lost T ");
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
			parameters[0].Value = "tb_borrowCard_Lost";
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
            strSql.Append(")AS Row, T.*  from tb_borrowCard_Lost T ");
            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }
            strSql.Append(" ) TT");
            strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
            recordcount = GetRecordCount(strWhere);
            return DbHelperSQL.Query(strSql.ToString());
        }
        #endregion  ExtensionMethod
    }
}

