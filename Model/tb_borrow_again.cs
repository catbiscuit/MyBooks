using System;
namespace web.Model
{
	/// <summary>
	/// tb_borrow_again:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_borrow_again
	{
		public tb_borrow_again()
		{}
		#region Model
		private int? _id;
		private string _book_borrow_id;
		private DateTime? _again_date;
		private DateTime? _again_intime;
		private string _manager;
		/// <summary>
		/// 
		/// </summary>
		public int? id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string book_borrow_id
		{
			set{ _book_borrow_id=value;}
			get{return _book_borrow_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? again_date
		{
			set{ _again_date=value;}
			get{return _again_date;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? again_intime
		{
			set{ _again_intime=value;}
			get{return _again_intime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string manager
		{
			set{ _manager=value;}
			get{return _manager;}
		}
		#endregion Model

	}
}

