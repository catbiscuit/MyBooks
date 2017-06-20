using System;
namespace web.Model
{
	/// <summary>
	/// tb_borrow_card:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_borrow_card
	{
		public tb_borrow_card()
		{}
		#region Model
		private string _id;
		private DateTime? _handle_time;
		private DateTime? _valid_time;
		private string _ic_card;
		private string _phone;
		private bool _status= true;
		private bool _stop;
		private bool _lose;
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
		public DateTime? handle_time
		{
			set{ _handle_time=value;}
			get{return _handle_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? valid_time
		{
			set{ _valid_time=value;}
			get{return _valid_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ic_card
		{
			set{ _ic_card=value;}
			get{return _ic_card;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string phone
		{
			set{ _phone=value;}
			get{return _phone;}
		}
		/// <summary>
		/// true 为可以借阅  false为不能借阅即为已经借阅书未归还
		/// </summary>
		public bool status
		{
			set{ _status=value;}
			get{return _status;}
		}
		/// <summary>
		/// true 为可以借阅  false为不能借阅即为被管理员暂停使用
		/// </summary>
		public bool stop
		{
			set{ _stop=value;}
			get{return _stop;}
		}
		/// <summary>
		/// true 为可以借阅  false为不能借阅即为借阅卡丢失
		/// </summary>
		public bool lose
		{
			set{ _lose=value;}
			get{return _lose;}
		}
		#endregion Model

	}
}

