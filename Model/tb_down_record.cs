using System;
namespace web.Model
{
	/// <summary>
	/// tb_down_record:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_down_record
	{
		public tb_down_record()
		{}
		#region Model
		private int _id;
		private DateTime? _down_time;
		private string _file_name;
		private bool _is_down= false;
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
		public DateTime? down_time
		{
			set{ _down_time=value;}
			get{return _down_time;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string file_name
		{
			set{ _file_name=value;}
			get{return _file_name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public bool is_down
		{
			set{ _is_down=value;}
			get{return _is_down;}
		}
		#endregion Model

	}
}

