<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookAdd.aspx.cs" Inherits="Web.main.BookAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">

        function SetValue(no, name) {            
            document.getElementById("<%=txtTypeName.ClientID%>").value = name;
            document.getElementById("<%=txtType.ClientID%>").value = no;
        }

        function SelectType() {
            url = "BookType.aspx?key=1"
            ymPrompt.win({ title: '选择图书类别', iframe: { src: url }, height: 400, width: 700, maxBtn: true });
        }
        //对输入 进行验证
        function btnAdd_Check() {
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
                if (confirm("确认添加？")) {
                    return true;
                }
                else {
                    return false;
                }
            }
    </script>

    <div style="margin: auto">
        <table id="tbSearch" border="1px solid #9CB2CF" style="margin: auto" width="100%">
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
                    <asp:Label ID="Label7" runat="server" Text="图书类别名:"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtTypeName" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:TextBox ID="txtType" runat="server" Style="width: 50px"></asp:TextBox>
                    <span style="color: red">*</span>
                    <a href="javascript:SelectType()">选择</a>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="添加" OnClientClick="return btnAdd_Check()" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
