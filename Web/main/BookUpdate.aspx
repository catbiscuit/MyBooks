<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookUpdate.aspx.cs" Inherits="Web.main.BookUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript">
        function Check() {
            //获取欲上传的文件路径            
            var filepath = document.getElementById("<%=FileId.ClientID%>").value;
            if (filepath == null || filepath == "") {
                alert("请选择要上传的图片");
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
            var tp = "jpg,jpeg";
            //返回符合条件的后缀名在字符串中的位置
            var rs = tp.indexOf(last);
            //如果返回的结果大于或等于0，说明包含允许上传的文件类型
            if (rs >= 0) {
                return true;
            }
            else {
                alert("您选择的图片格式不正确，请重新选择！");
                return false;
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">

        function test() {
            return true;
        }

        function SelectType() {
            url = "BookType.aspx?key=2"
            ymPrompt.win({ title: '选择图书类别', iframe: { src: url }, height: 400, width: 700, maxBtn: true });
        }

        function SetValue(no, name) {
            document.getElementById("<%=txtTypeName.ClientID%>").value = name;
            document.getElementById("<%=txtType.ClientID%>").value = no;
        }

        //对输入 进行验证
        function btnUpdateCheck() {
            var strName = document.getElementById("<%=txtName.ClientID%>").value;
            var strAuthor = document.getElementById("<%=txtAuthor.ClientID%>").value;
            var strISBN = document.getElementById("<%=txtISBN.ClientID%>").value;
            var strPublisher = document.getElementById("<%=txtPulisher.ClientID%>").value;
            var strPrice = document.getElementById("<%=txtPrice.ClientID%>").value;

            if (strName == "" || strName == null) {
                alert("书名不能为空js");
                return false;
            }
            else if (strAuthor == "" || strAuthor == null) {
                alert("作者不能为空js");
                return false;
            }
            else if (strISBN == "" || strISBN == null) {
                alert("ISBN不能为空js");
                return false;
            }
            else if (strPublisher == "" || strPublisher == null) {
                alert("出版社不能为空js");
                return false;
            }
            else if (strPrice == "" || strPrice == null) {
                alert("价格不能为空js");
                return false;
            }
            if (confirm("确认修改？")) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
    <table id="tbSearch" border="1px solid #9CB2CF" style="float: left;" width="50%">
        <tr>
            <th>
                <asp:Label ID="Label8" runat="server" Text="编号:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtId" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label1" runat="server" Text="书名:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label2" runat="server" Text="作者 :"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label3" runat="server" Text="ISBN:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label4" runat="server" Text="出版社"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtPulisher" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label5" runat="server" Text="语言:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtLanguage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label6" runat="server" Text="价格 :"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label7" runat="server" Text="类别:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtTypeName" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtType" runat="server"></asp:TextBox>
                <span style="color: red">*</span>
                <a href="javascript:SelectType()">选择</a>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Button ID="btnUpdate" Text="确认" runat="server" OnClientClick="return btnUpdateCheck()" OnClick="btnUpdate_Click" />
            </th>
            <td>
                <input onclick="parent.ymPrompt.doHandler('close');" type="button" class="submit1" value="取消" />
            </td>
        </tr>
    </table>
    <div style="border:groove; padding: 2px;float: right; width: 40%; height: 500px">

        <asp:Label ID="Label9" runat="server" Text="图片格式仅支持jpg。"></asp:Label>
        <hr />
        <asp:Image ID="Image1" runat="server" Height="300px" />
        <br />
        <asp:FileUpload ID="FileId" runat="server" />
        <br />
        <br />
        <asp:Button ID="btnImg" runat="server" Text="上传" OnClientClick="return Check()" OnClick="btnImg_Click" />

    </div>
</asp:Content>
