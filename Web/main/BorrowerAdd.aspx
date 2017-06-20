<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BorrowerAdd.aspx.cs" Inherits="Web.main.BorrowerAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <script type="text/javascript">

        //对输入 进行验证
        function btnAdd_Check() {
            var strName = document.getElementById("<%=txtName.ClientID%>").value;
            var strGrade = document.getElementById("<%=txtGrade.ClientID%>").value;
            var strICCard = document.getElementById("<%=txtICCard.ClientID%>").value;
            var strPhone = document.getElementById("<%=txtPhone.ClientID%>").value;

            if (strName == "" || strName == null)
            {
                alert("姓名不能为空js");
                return false;
            }
            else if(strGrade==""||strGrade==null)
            {
                alert("年级不能为空");
                return false;
            }
            else if (strICCard == "" || strICCard == null)
            {
                alert("身份证号码不能不能为空js");
                return false;
            }
            else if (strPhone == "" || strPhone == null)
            {
                alert("手机号码不能为空js");
                return false;
            }
 
            var regIDNo = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            if (!regIDNo.test(strICCard))
            {
                alert('身份证填写有误,请重新输入js');
                return false;
            }
            var regPhone = /^(((1[3456789][0-9]{1})|(15[0-9]{1}))+\d{8})$/;
            if (!regPhone.test(strPhone))
            {
                alert('手机号填写有误,请重新输入js');
                return false;
            }

            if (confirm("确认添加？"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    </script>
    <div style="margin: auto">
        <table id="tbSearch" border="1px solid #9CB2CF" style="margin: auto">
            <tr>
                <th>
                    <asp:Label runat="server">姓名</asp:Label>
                </th>
                <td>
                    <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label runat="server">性别</asp:Label>
                </th>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="True">男</asp:ListItem>
                        <asp:ListItem Value="False">女</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label runat="server">年级</asp:Label>
                </th>
                <td>
                    <asp:TextBox runat="server" ID="txtGrade"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label runat="server">身份证</asp:Label>
                </th>
                <td>
                    <asp:TextBox runat="server" ID="txtICCard"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label runat="server">手机号码</asp:Label>
                </th>
                <td>
                    <asp:TextBox runat="server" ID="txtPhone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <asp:Button runat="server" ID="btnAdd" Text="添加" OnClientClick="return btnAdd_Check()" OnClick="btnAdd_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
