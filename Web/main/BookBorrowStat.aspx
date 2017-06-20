<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookBorrowStat.aspx.cs" Inherits="Web.main.BookBorrowStat" %>

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

    <script language="javascript" type="text/javascript" src="javascript/my97datepicker/WdatePicker.js"></script>

    <div style="border: groove; padding: 2px">
        <asp:Label runat="server" ID="nlblPutinTime">借阅时间</asp:Label>
        <input runat="server" id="beginDate" type="text" onclick="WdatePicker()" />
        至
        <input runat="server" id="endDate" type="text" onclick="WdatePicker()" />

        <asp:Label runat="server" ID="Label1">排序字段</asp:Label>
        <asp:DropDownList ID="ddlOrderBy" runat="server">
            <asp:ListItem Value="asc">借阅次数 升序</asp:ListItem>
            <asp:ListItem Value="desc">借阅次数 降序</asp:ListItem>
        </asp:DropDownList>
        <asp:LinkButton ID="nlbtList" CommandName="List" runat="server" OnClick="nlbtList_Click">查询</asp:LinkButton>
        <br />
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
                        <th>序号</th>
                        <th>编号</th>
                        <th>名称</th>
                        <th>作者</th>
                        <th>ISBN</th>
                        <th>出版商</th>
                        <th>类别</th>
                        <th>借阅次数</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Panel ID="plItem" runat="server">

                <tr>
                    <td><%#Eval("row") %></td>
                    <td><%#Eval("id") %></td>
                    <td><%#Eval("name") %></td>
                    <td><%#Eval("author") %></td>
                    <td><%#Eval("ISBN") %></td>
                    <td><%#Eval("publisher") %></td>
                    <td><%#Eval("typename") %></td>
                    <td><%#Eval("times") %></td>
                </tr>
            </asp:Panel>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
