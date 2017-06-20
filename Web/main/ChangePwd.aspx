<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="Web.main.ChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        
        function Sure() {
            if (document.getElementById("lbl1").value.length < 4) {
                alert("密码长度不得小于4位");
                return false;
            }
        }
    </script>
    <div style="margin: auto">
        <table id="tbSearch" border="1px solid #9CB2CF" style="margin: auto">
            <tr>
                <th>
                    <asp:Label ID="lblAdminDWText" runat="server" Text="原密码"></asp:Label>
                </th>
                <td>
                    <asp:TextBox runat="server" ID="OldPwd">******</asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lbl1" runat="server" Text="输入新密码"></asp:Label>
                </th>
                <td>
                    <asp:TextBox runat="server" ID="NewPwd"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <asp:Button ID="btnOK" runat="server" Text="确定" OnClick="btnOK_Click" OnClientClick="Sure()" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
