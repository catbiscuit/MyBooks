using System;
namespace web.Model
{
	/// <summary>
	/// tb_book_info:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_book_info
	{
		public tb_book_info()
		{}
		#region Model
		private string _id;
		private string _name;
		private string _spell;
		private string _author;
		private string _isbn;
		private string _publisher;
		private string _language;
		private decimal? _price;
		private bool _lost= false;
		private string _type;
		private DateTime? _putin_time;
		private bool _status= true;
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
		public string name
		{
			set{ _name=value;}
			get{return _name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string spell
		{
			set{ _spell=value;}
			get{return _spell;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string author
		{
			set{ _author=value;}
			get{return _author;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ISBN
		{
			set{ _isbn=value;}
			get{return _isbn;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string publisher
		{
			set{ _publisher=value;}
			get{return _publisher;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string language
		{
			set{ _language=value;}
			get{return _language;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? price
		{
			set{ _price=value;}
			get{return _price;}
		}
		/// <summary>
		/// 
		/// </summary>
		public bool lost
		{
			set{ _lost=value;}
			get{return _lost;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string type
		{
			set{ _type=value;}
			get{return _type;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? putin_time
		{
			set{ _putin_time=value;}
			get{return _putin_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public bool status
		{
			set{ _status=value;}
			get{return _status;}
		}
		#endregion Model

	}
}

