using System;
namespace web.Model
{
	/// <summary>
	/// tb_borrowCard_Lost:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_borrowCard_Lost
	{
		public tb_borrowCard_Lost()
		{}
		#region Model
		private int _id;
		private string _borrow_id;
		private string _borrow_name;
		private bool _borrow_gender;
		private string _borrow_card_id;
		private DateTime? _lost_date;
		private DateTime? _relieve_date;
		private string _operater;
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
		public bool borrow_gender
		{
			set{ _borrow_gender=value;}
			get{return _borrow_gender;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string borrow_card_id
		{
			set{ _borrow_card_id=value;}
			get{return _borrow_card_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? lost_date
		{
			set{ _lost_date=value;}
			get{return _lost_date;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? relieve_date
		{
			set{ _relieve_date=value;}
			get{return _relieve_date;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string operater
		{
			set{ _operater=value;}
			get{return _operater;}
		}
		#endregion Model

	}
}

