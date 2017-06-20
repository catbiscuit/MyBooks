<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BorrowIn.aspx.cs" Inherits="Web.main.BorrowIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--仅使用css就实现了隔行换色选择高亮-->
    <style type="text/css">
        table.tblist th {
            background-color: #0062F2;
            color: #ffffff;
        }

        table.tblist tr {
            background-color: #E8FFE8;
        }

            table.tblist tr:nth-child(odd) {
                background: #FFF3EE;
            }

            table.tblist tr:hover {
                background: #73B1E0;
                color: #FFF;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">

        //对输入 进行验证
        function btn_Check() {
            var strBookId = document.getElementById("<%=txtBookId.ClientID%>").value;
            var strCardId = document.getElementById("<%=txtCardId.ClientID%>").value;

            if (strBookId == "" || strBookId == null) {
                alert("书本id不能为空js");
                return false;
            }
            else if (strCardId == "" || strCardId == null) {
                alert("借阅卡id不能为空js");
                return false;
            }

            if (confirm("确认归还？")) {
                return true;
            }
            else {
                return false;
            }



        }
        function LoadReader_Check() {
            var strCardId = document.getElementById("<%=txtCardId.ClientID%>").value;
            if (strCardId == "" || strCardId == null) {
                alert("借阅卡id不能为空js");
                return false;
            }
        }
        function LoadBook_Check() {
            var strBookId = document.getElementById("<%=txtBookId.ClientID%>").value;
            if (strBookId == "" || strBookId == null) {
                alert("书本id不能为空js");
                return false;
            }
        }
    </script>
    <div style="text-align: center">
        <h2>归还图书</h2>
    </div>
    <div style="margin: auto">
        <table id="tbSearch" border="1px solid #9CB2CF" style="margin: auto; width: 100%">
            <tr>
                <th colspan="2" style="text-align: center" width="50%">读者信息</th>
                <th colspan="2" style="text-align: center" width="50%">书本信息</th>
            </tr>
            <tr>
                <th width="15%">借阅卡id</th>
                <td width="35%">
                    <asp:TextBox ID="txtCardId" runat="server"></asp:TextBox>
                    <span style="color: red">*</span>
                    <asp:Button runat="server" ID="btnLoadReader" Text="选择读者" OnClientClick="return LoadReader_Check()" OnClick="btnLoadReader_Click" />
                </td>
                <th width="15%">书本id</th>
                <td width="35%">
                    <asp:TextBox ID="txtBookId" runat="server"></asp:TextBox>
                    <span style="color: red">*</span>
                    <asp:Button runat="server" ID="btnLoadBook" Text="选择书籍" OnClientClick="return LoadBook_Check()" OnClick="btnLoadBook_Click" />
                </td>
            </tr>
            <tr>
                <th>读者姓名</th>
                <td>
                    <asp:TextBox ID="txtReaderName" runat="server" ReadOnly="true"></asp:TextBox></td>
                <th>书籍名称</th>
                <td>
                    <asp:TextBox ID="txtBookName" runat="server" ReadOnly="true"></asp:TextBox></td>
            </tr>
            <tr>
                <th>性别</th>
                <td>
                    <asp:TextBox ID="txtReaderGender" runat="server" ReadOnly="true"></asp:TextBox></td>
                <th>作者</th>
                <td>
                    <asp:TextBox ID="txtBookAuthor" runat="server" ReadOnly="true"></asp:TextBox></td>
            </tr>
            <tr>
                <th>年级部门</th>
                <td>
                    <asp:TextBox ID="txtReaderPartment" runat="server" ReadOnly="true"></asp:TextBox></td>
                <th>出版社</th>
                <td>
                    <asp:TextBox ID="txtBookPulisher" runat="server" ReadOnly="true"></asp:TextBox></td>
            </tr>
        </table>
        <div style="position: center">
            <table width="100%">
                <tr>
                    <th></th>
                    <td width="100%" align="center">
                        <asp:Button runat="server" ID="btn" Text="归还" OnClientClick="return btn_Check()" OnClick="btn_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </div>
    <fieldset>
        <legend>读者借阅记录
        </legend>
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table border="1" style="width: 100%; text-align: center; border-collapse: collapse; font-size: 12px" class="tblist">
                        <thead style="background-color: #1BBCF2">
                            <tr>
                                <th>操作</th>
                                <th>书名</th>
                                <th>ISBN</th>
                                <th>价格</th>
                                <th>借阅时间</th>
                                <th>应还时间</th>
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Panel ID="plItem" runat="server">

                        <tr>
                            <td>null</td>
                            <td><%#Eval("name") %></td>
                            <td><%#Eval("ISBN") %></td>
                            <td><%#Eval("price") %></td>
                            <td><%#Eval("out_time") %></td>
                            <td><%#Eval("in_time") %></td>
                        </tr>
                    </asp:Panel>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </fieldset>
</asp:Content>
