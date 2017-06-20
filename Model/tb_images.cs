using System;
namespace web.Model
{
	/// <summary>
	/// tb_images:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_images
	{
		public tb_images()
		{}
		#region Model
		private int _id;
		private string _src;
		private string _foreign_id;
		private DateTime? _upload_date;
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
		public string src
		{
			set{ _src=value;}
			get{return _src;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string foreign_id
		{
			set{ _foreign_id=value;}
			get{return _foreign_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? upload_date
		{
			set{ _upload_date=value;}
			get{return _upload_date;}
		}
		#endregion Model

	}
}

