<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookStatus.aspx.cs" Inherits="Web.main.BookStatus" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
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
        <asp:Label runat="server" ID="nlblName">名称/拼音简码/ISBN</asp:Label>
        <asp:TextBox runat="server" ID="ntxtName"></asp:TextBox>
        <asp:Label runat="server" ID="nlblAuthor">作者</asp:Label>
        <asp:TextBox runat="server" ID="ntxtAuthor"></asp:TextBox>
        <asp:Label runat="server" ID="nlblPublisher">出版社</asp:Label>
        <asp:TextBox runat="server" ID="ntxtPublisher"></asp:TextBox>
        <br />
        <asp:LinkButton ID="nlbtList" CommandName="List" runat="server" OnClick="nlbtList_Click">查询</asp:LinkButton>
                &nbsp;
        <asp:LinkButton ID="nlbtRefresh" CommandName="List" runat="server" OnClick="nlbtRefresh_Click">刷新</asp:LinkButton>
    </div>
    <div id="divPage">

        <webdiyer:AspNetPager ID="Pager" runat="server" FirstPageText="首页" LastPageText="末页"
            NextPageText="下一页" NumericButtonCount="5" PageSize="1" PrevPageText="上一页" AlwaysShow="True"
            ShowPageIndexBox="Auto" CustomInfoSectionWidth="" CustomInfoTextAlign="Right"
            Direction="LeftToRight" HorizontalAlign="Right" ShowBoxThreshold="1" ShowCustomInfoSection="left"
            ShowPageIndex="false" SubmitButtonText="转到" CssClass="pagebut" CustomInfoClass="pagebut2"
            SubmitButtonClass="GeneralButton" CustomInfoHTML="" OnPageChanged="Pager_PageChanged">
        </webdiyer:AspNetPager>

    </div>
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table border="1" style="width: 100%; text-align: center; border-collapse: collapse; font-size: 12px">
                <thead style="background-color: #1BBCF2">
                    <tr>
                        <th>图书id</th>
                        <th>图书名称</th>
                        <th>ISBN</th>
                        <th>作者</th>
                        <th>出版社</th>
                        <th>状态</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Panel ID="plItem" runat="server">
                <tr>
                    <td><%#Eval("id") %></td>
                    <td><%#Eval("name") %></td>
                    <td><%#Eval("ISBN") %></td>
                    <td><%#Eval("author") %></td>
                    <td><%#Eval("publisher") %></td>
                    <td><%#Eval("status").ToString()=="False"?"<span style='color:red'>已借</span>":"<span style='color:green'>未借</span>" %></td>
                </tr>
            </asp:Panel>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
