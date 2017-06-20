using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace web.DAL
{
	/// <summary>
	/// 数据访问类:tb_borrow_card
	/// </summary>
	public partial class tb_borrow_card
	{
		public tb_borrow_card()
		{}
		#region  BasicMethod

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(string id)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from tb_borrow_card");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,100)			};
			parameters[0].Value = id;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public bool Add(web.Model.tb_borrow_card model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into tb_borrow_card(");
			strSql.Append("id,handle_time,valid_time,ic_card,phone,status,stop,lose)");
			strSql.Append(" values (");
			strSql.Append("@id,@handle_time,@valid_time,@ic_card,@phone,@status,@stop,@lose)");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,100),
					new SqlParameter("@handle_time", SqlDbType.DateTime),
					new SqlParameter("@valid_time", SqlDbType.DateTime),
					new SqlParameter("@ic_card", SqlDbType.VarChar,50),
					new SqlParameter("@phone", SqlDbType.VarChar,50),
					new SqlParameter("@status", SqlDbType.Bit,1),
					new SqlParameter("@stop", SqlDbType.Bit,1),
					new SqlParameter("@lose", SqlDbType.Bit,1)};
			parameters[0].Value = model.id;
			parameters[1].Value = model.handle_time;
			parameters[2].Value = model.valid_time;
			parameters[3].Value = model.ic_card;
			parameters[4].Value = model.phone;
			parameters[5].Value = model.status;
			parameters[6].Value = model.stop;
			parameters[7].Value = model.lose;

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
		public bool Update(web.Model.tb_borrow_card model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update tb_borrow_card set ");
			strSql.Append("handle_time=@handle_time,");
			strSql.Append("valid_time=@valid_time,");
			strSql.Append("ic_card=@ic_card,");
			strSql.Append("phone=@phone,");
			strSql.Append("status=@status,");
			strSql.Append("stop=@stop,");
			strSql.Append("lose=@lose");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@handle_time", SqlDbType.DateTime),
					new SqlParameter("@valid_time", SqlDbType.DateTime),
					new SqlParameter("@ic_card", SqlDbType.VarChar,50),
					new SqlParameter("@phone", SqlDbType.VarChar,50),
					new SqlParameter("@status", SqlDbType.Bit,1),
					new SqlParameter("@stop", SqlDbType.Bit,1),
					new SqlParameter("@lose", SqlDbType.Bit,1),
					new SqlParameter("@id", SqlDbType.VarChar,100)};
			parameters[0].Value = model.handle_time;
			parameters[1].Value = model.valid_time;
			parameters[2].Value = model.ic_card;
			parameters[3].Value = model.phone;
			parameters[4].Value = model.status;
			parameters[5].Value = model.stop;
			parameters[6].Value = model.lose;
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
		public bool Delete(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from tb_borrow_card ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,100)			};
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
			strSql.Append("delete from tb_borrow_card ");
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
		public web.Model.tb_borrow_card GetModel(string id)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 id,handle_time,valid_time,ic_card,phone,status,stop,lose from tb_borrow_card ");
			strSql.Append(" where id=@id ");
			SqlParameter[] parameters = {
					new SqlParameter("@id", SqlDbType.VarChar,100)			};
			parameters[0].Value = id;

			web.Model.tb_borrow_card model=new web.Model.tb_borrow_card();
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
		public web.Model.tb_borrow_card DataRowToModel(DataRow row)
		{
			web.Model.tb_borrow_card model=new web.Model.tb_borrow_card();
			if (row != null)
			{
				if(row["id"]!=null)
				{
					model.id=row["id"].ToString();
				}
				if(row["handle_time"]!=null && row["handle_time"].ToString()!="")
				{
					model.handle_time=DateTime.Parse(row["handle_time"].ToString());
				}
				if(row["valid_time"]!=null && row["valid_time"].ToString()!="")
				{
					model.valid_time=DateTime.Parse(row["valid_time"].ToString());
				}
				if(row["ic_card"]!=null)
				{
					model.ic_card=row["ic_card"].ToString();
				}
				if(row["phone"]!=null)
				{
					model.phone=row["phone"].ToString();
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
				if(row["stop"]!=null && row["stop"].ToString()!="")
				{
					if((row["stop"].ToString()=="1")||(row["stop"].ToString().ToLower()=="true"))
					{
						model.stop=true;
					}
					else
					{
						model.stop=false;
					}
				}
				if(row["lose"]!=null && row["lose"].ToString()!="")
				{
					if((row["lose"].ToString()=="1")||(row["lose"].ToString().ToLower()=="true"))
					{
						model.lose=true;
					}
					else
					{
						model.lose=false;
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
			strSql.Append("select id,handle_time,valid_time,ic_card,phone,status,stop,lose ");
			strSql.Append(" FROM tb_borrow_card ");
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
			strSql.Append(" id,handle_time,valid_time,ic_card,phone,status,stop,lose ");
			strSql.Append(" FROM tb_borrow_card ");
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
			strSql.Append("select count(1) FROM tb_borrow_card ");
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
			strSql.Append(")AS Row, T.*  from tb_borrow_card T ");
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
			parameters[0].Value = "tb_borrow_card";
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

