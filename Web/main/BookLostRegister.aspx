<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookLostRegister.aspx.cs" Inherits="Web.main.BookLostRegister" %>

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

    <script type="text/javascript">

        function LoadBook_Check() {
            var strBookId = document.getElementById("<%=txtBookId.ClientID%>").value;
            if (strBookId == "" || strBookId == null) {
                alert("书本id不能为空js");
                return false;
            }
        }

        $(function () {
            var t = $('#txtFineMoney');
            if (t.val() == "")
            {
                if (confirm("实际缴纳的罚金未填，是否自动输入为图书价格？"))
                {
                    var price = $('#txtBookPrice').val();
                    $('#txtFineMoney').text(price);
                }
            }
        });
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <h2>图书丢失处理</h2>
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
                    <asp:TextBox ID="txtBookId" runat="server" ReadOnly="true"></asp:TextBox>
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
            <tr>
                <td colspan="4" style="text-align: center" width="50%">
                    <label style="font-size: 20px">
                        需要缴纳的赔偿金额为：
                    </label>
                    <asp:TextBox ID="txtBookPrice" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center" width="50%">
                    <label style="font-size: 20px">
                        实际缴纳的赔偿金额为：
                    </label>
                    <asp:TextBox ID="txtFineMoney" runat="server"></asp:TextBox>                    
                </td>
            </tr>
            <tr>
                <th colspan="4" style="text-align: center" width="50%">
                    <asp:Button runat="server" ID="btnSubmit" Text="确认" OnClientClick="return confirm('确认读者信息和图书信息？')" OnClick="btnSubmit_Click" />
                </th>
            </tr>
        </table>
</asp:Content>
