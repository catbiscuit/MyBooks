using System;
namespace web.Model
{
	/// <summary>
	/// tb_book_lost:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_book_lost
	{
		public tb_book_lost()
		{}
		#region Model
		private int _id;
		private string _borrow_id;
		private string _borrow_name;
		private string _book_id;
		private string _book_isbn;
		private string _book_name;
		private string _book_publisher;
		private string _book_author;
		private decimal? _book_price;
		private DateTime? _submit_date;
		private decimal? _fine_money;
		private string _manager;
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
		public string borrow_id
		{
			set{ _borrow_id=value;}
			get{return _borrow_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string borrow_name
		{
			set{ _borrow_name=value;}
			get{return _borrow_name;}
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
		public string book_ISBN
		{
			set{ _book_isbn=value;}
			get{return _book_isbn;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string book_name
		{
			set{ _book_name=value;}
			get{return _book_name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string book_publisher
		{
			set{ _book_publisher=value;}
			get{return _book_publisher;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string book_author
		{
			set{ _book_author=value;}
			get{return _book_author;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? book_price
		{
			set{ _book_price=value;}
			get{return _book_price;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? submit_date
		{
			set{ _submit_date=value;}
			get{return _submit_date;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? fine_money
		{
			set{ _fine_money=value;}
			get{return _fine_money;}
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

