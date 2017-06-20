using System;
namespace web.Model
{
	/// <summary>
	/// tb_book_borrow:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_book_borrow
	{
		public tb_book_borrow()
		{}
		#region Model
		private string _id;
		private string _book_id;
		private string _borrow_id;
		private DateTime? _out_time;
		private DateTime? _in_time;
		private DateTime? _reality_time;
		private int? _again_count=0;
		/// <summary>
		/// 
		/// </summary>
		public string id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string book_id
		{
			set{ _book_id=value;}
			get{return _book_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string borrow_id
		{
			set{ _borrow_id=value;}
			get{return _borrow_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? out_time
		{
			set{ _out_time=value;}
			get{return _out_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? in_time
		{
			set{ _in_time=value;}
			get{return _in_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? reality_time
		{
			set{ _reality_time=value;}
			get{return _reality_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? again_count
		{
			set{ _again_count=value;}
			get{return _again_count;}
		}
		#endregion Model

	}
}

