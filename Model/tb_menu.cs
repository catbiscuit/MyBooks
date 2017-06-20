using System;
namespace web.Model
{
	/// <summary>
	/// tb_menu:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class tb_menu
	{
		public tb_menu()
		{}
		#region Model
		private string _menu_id;
		private string _menu_parent_id;
		private string _menu_name;
		private string _menu_url;
		private int? _menu_level;
		private int? _menu_sort;
		/// <summary>
		/// 
		/// </summary>
		public string menu_id
		{
			set{ _menu_id=value;}
			get{return _menu_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string menu_parent_id
		{
			set{ _menu_parent_id=value;}
			get{return _menu_parent_id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string menu_name
		{
			set{ _menu_name=value;}
			get{return _menu_name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string menu_url
		{
			set{ _menu_url=value;}
			get{return _menu_url;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? menu_level
		{
			set{ _menu_level=value;}
			get{return _menu_level;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int? menu_sort
		{
			set{ _menu_sort=value;}
			get{return _menu_sort;}
		}
		#endregion Model

	}
}

