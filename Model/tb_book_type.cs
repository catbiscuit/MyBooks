using System;
namespace web.Model
{
	/// <summary>
	/// tb_book_type:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_book_type
	{
		public tb_book_type()
		{}
		#region Model
		private int _id;
		private string _no;
		private string _name;
		private string _parent_no;
		/// <summary>
		/// 
		/// </summary>
		public int id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string no
		{
			set{ _no=value;}
			get{return _no;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string name
		{
			set{ _name=value;}
			get{return _name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string parent_no
		{
			set{ _parent_no=value;}
			get{return _parent_no;}
		}
		#endregion Model

	}
}

