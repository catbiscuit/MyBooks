<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BorrowerUpdate.aspx.cs" Inherits="Web.main.BorrowerUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript" type="text/javascript" src="javascript/my97datepicker/WdatePicker.js"></script>
    <script type="text/javascript">
        //对输入 进行验证
        function btnUpdateCheck() {
            var strId = document.getElementById("<%=txtId.ClientID%>").value;
            var strName = document.getElementById("<%=txtName.ClientID%>").value;
            var strGrade = document.getElementById("<%=txtGrade.ClientID%>").value;
            var strBorrowId = document.getElementById("<%=txtBorrowId.ClientID%>").value;
            var strEndDate = document.getElementById("<%=endDate.ClientID%>").value;
            var strICCard=document.getElementById("<%=txtICCard.ClientID%>").value;
            var strPhone=document.getElementById("<%=txtPhone.ClientID%>").value;
            

            if (strId == "" || strId == null) {
                alert("读者id不能为空js");
                return false;
            }
            else if (strName == "" || strName == null) {
                alert("读者姓名不能为空js");
                return false;
            }
            else if (strGrade == "" || strGrade == null) {
                alert("读者年级不能为空js");
                return false;
            }
            else if (strBorrowId == "" || strBorrowId == null) {
                alert("借阅卡id不能为空js");
                return false;
            }
            else if (strEndDate == "" || strEndDate == null) {
                alert("借阅卡过期时间不能为空js");
                return false;
            }
            else if (strICCard == "" || strICCard == null) {
                alert("读者身份证不能为空js");
                return false;
            }
            else if (strPhone == "" || strPhone == null) {
                alert("读者手机号码不能为空js");
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table id="tbSearch" border="1px solid #9CB2CF" style="margin: auto" width="100%">
        <tr>
            <th>
                <asp:Label ID="Label8" runat="server" Text="读者编号:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtId" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label1" runat="server" Text="读者姓名:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label2" runat="server" Text="读者性别 :"></asp:Label>
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
                <asp:Label ID="Label3" runat="server" Text="年级:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label4" runat="server" Text="借阅卡id"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtBorrowId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label5" runat="server" Text="过期时间:"></asp:Label>
            </th>
            <td>
                <input runat="server" id="endDate" type="text" onclick="WdatePicker()" />
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label6" runat="server" Text="身份证 :"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtICCard" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <th>
                <asp:Label ID="Label7" runat="server" Text="手机号码:"></asp:Label>
            </th>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
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

</asp:Content>
