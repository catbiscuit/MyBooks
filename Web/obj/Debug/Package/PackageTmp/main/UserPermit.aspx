<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserPermit.aspx.cs" Inherits="Web.main.UserPermit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input runat="server" id="txt" type="hidden" />

    <table class="table2" width="100%" cellpadding="0" cellspacing="1" border="1">
        <tr>
            <th style="width: 20%">用户列表
            </th>
            <th style="width: 70%">对应权限
            </th>
            <th style="width: 10%"></th>
        </tr>
        <tr>
            <td valign="top">
                <div style="width: 100%">
                    <div style="width: 100px; margin-left: auto; margin-right: auto; margin-bottom: 10px; margin-top: 10px; height: 100px">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                        </asp:DropDownList>
                    </div>
                    <div style="width: 30%; margin-left: auto; margin-right: auto">
                        <asp:Button runat="server" ID="btnSubmit" Text="确认选择" Width="67px" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </td>
            <td>
                <div id="table_container" class="table_container" style="height: 400px; overflow: auto">
                    <asp:TreeView runat="server" ID="TreeView1" ShowLines="True">
                    </asp:TreeView>
                </div>
            </td>
            <td>
                <div style="width: 100%">
                    <div style="margin-left: auto; margin-right: auto; margin-bottom: 10px;" class="auto-style1">
                        <asp:Button runat="server" ID="btnSave" Text="保存权限" OnClientClick="return confirm('真的要修改吗？')" OnClick="btnSave_Click" />
                    </div>
                </div>

            </td>
        </tr>
    </table>
</asp:Content>
