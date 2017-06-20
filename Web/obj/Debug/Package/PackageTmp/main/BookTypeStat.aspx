<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookTypeStat.aspx.cs" Inherits="Web.main.BookTypeStat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--仅使用css就实现了隔行换色选择高亮-->
    <style type="text/css">
        th {
            background-color: #0062F2;
            color: #ffffff;
        }

        tr {
            background-color: #E8FFE8;
        }

        table tr:nth-child(odd) {
            background: #FFF3EE;
        }

        table tr:hover {
            background: #73B1E0;
            color: #FFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border: groove; padding: 2px">
        <asp:LinkButton ID="nlbtRefresh" CommandName="List" runat="server" OnClick="nlbtRefresh_Click">刷新</asp:LinkButton>
    </div>
    <br />
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table border="1" style="width: 100%; text-align: center; border-collapse: collapse; font-size: 12px">
                <thead style="background-color: #1BBCF2">
                    <tr>
                        <th>图书分类号</th>
                        <th>图书分类名</th>
                        <th>图书数量</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Panel ID="plItem" runat="server">

                <tr>
                    <td><%#Eval("no") %></td>
                    <td><%#Eval("name") %></td>
                    <td><%#Eval("times") %></td>
                </tr>
            </asp:Panel>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
