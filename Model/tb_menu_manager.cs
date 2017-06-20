using System;
namespace web.Model
{
	/// <summary>
	/// tb_menu_manager:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_menu_manager
	{
		public tb_menu_manager()
		{}
		#region Model
		private int _id;
		private int? _user_id;
		private string _menu_id;
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
		public int? user_id
		{
			set{ _user_id=value;}
			get{return _user_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string menu_id
		{
			set{ _menu_id=value;}
			get{return _menu_id;}
		}
		#endregion Model

	}
}

