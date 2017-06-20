<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="InputExcel.aspx.cs" Inherits="Web.main.InputExcel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script language="javascript" type="text/javascript">
        function Check() {
            //获取欲上传的文件路径            
            var filepath = document.getElementById("<%=FileId.ClientID%>").value;
            if (filepath == null||filepath=="")
            {
                alert("请选择要上传的电子表格");
                return false;
            }
            //为了避免转义反斜杠出问题，这里将对其进行转换
            var re = /(\\+)/g;
            var filename = filepath.replace(re, "#");
            //对路径字符串进行剪切截取
            var one = filename.split("#");
            //获取数组中最后一个，即文件名
            var two = one[one.length - 1];
            //再对文件名进行截取，以取得后缀名
            var three = two.split(".");
            //获取截取的最后一个字符串，即为后缀名
            var last = three[three.length - 1];
            //添加需要判断的后缀名类型
            var tp = "xls,xlsx";
            //返回符合条件的后缀名在字符串中的位置
            var rs = tp.indexOf(last);
            //如果返回的结果大于或等于0，说明包含允许上传的文件类型
            if (rs >= 0) {
                return true;
            }
            else {
                alert("您选择的上传文件不是有效的电子表格文件！");
                return false;
            }        
        }
    </script>
    <div>
<%--       参考的Excel导入导出方法
     <asp:Button runat="server" ID="btn_read_03" Text="读取xls(03)到GridView" OnClick="btn_read_03_click" />
        <asp:Button runat="server" ID="btn_read_07" Text="读取xls(07)到GridView" OnClick="btn_read_07_click" />
        <asp:Button runat="server" ID="btn_import_03" Text="导出xls(03)33333条数据" OnClick="btn_import_03_click" />
        <asp:Button runat="server" ID="btn_import_07" Text="导出xls(07)33333条数据" OnClick="btn_import_07_click" />--%>

        <asp:FileUpload runat="server" ID="FileId" />
        &nbsp;&nbsp;
        <asp:Button ID="btnUpload" runat="server" Text="上传" OnClientClick="return Check()" OnClick="btnUpload_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnInput" runat="server" Text="导入" OnClick="btnInput_Click" Visible="False" />
        <asp:GridView runat="server" ID="g1" AutoGenerateColumns="true" Width="100%"></asp:GridView>
    </div>
</asp:Content>
