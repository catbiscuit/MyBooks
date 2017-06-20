using System;
namespace web.Model
{
	/// <summary>
	/// tb_borrower_info:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_borrower_info
	{
		public tb_borrower_info()
		{}
		#region Model
		private string _id;
		private string _name;
		private bool _gender;
		private string _grade;
		private string _card_id;
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
		/// 1为男，0为女。
		/// </summary>
		public bool gender
		{
			set{ _gender=value;}
			get{return _gender;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string grade
		{
			set{ _grade=value;}
			get{return _grade;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string card_id
		{
			set{ _card_id=value;}
			get{return _card_id;}
		}
		#endregion Model

	}
}

