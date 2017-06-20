<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookType.aspx.cs" Inherits="Web.main.BookType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function select(no,name)
        {           
            if (document.getElementById("<%=txtID.ClientID%>").value == '添加') {
                window.top.frames["图书入库"].SetValue(no, name);
                parent.ymPrompt.doHandler('close');
            }
            else
            {
                window.top.frames["图书列表"].frames["bookupdate"].SetValue(no, name);
                parent.ymPrompt.doHandler('close');
            }
        }
    </script>  
    <asp:TextBox runat="server" ID="txtID" Width="27px" ReadOnly="true"></asp:TextBox>
    <hr />
    <asp:TreeView runat="server" ID="TreeView1" ShowLines="True">

    </asp:TreeView>
</asp:Content>
