using System;
namespace web.Model
{
	/// <summary>
	/// tb_upload_record:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_upload_record
	{
		public tb_upload_record()
		{}
		#region Model
		private int _id;
		private DateTime? _upload_time;
		private string _file_name;
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
		public DateTime? upload_time
		{
			set{ _upload_time=value;}
			get{return _upload_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string file_name
		{
			set{ _file_name=value;}
			get{return _file_name;}
		}
		#endregion Model

	}
}

