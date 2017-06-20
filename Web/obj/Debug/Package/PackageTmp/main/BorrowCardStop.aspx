<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BorrowCardStop.aspx.cs" Inherits="Web.main.BorrowCardStop" %>

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
        <asp:Label runat="server">读者姓名</asp:Label>
        <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label runat="server">借阅卡id</asp:Label>
        <asp:TextBox runat="server" ID="txtCardId"></asp:TextBox>
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

    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate>
            <table border="1" style="width: 100%; text-align: center; border-collapse: collapse; font-size: 12px">
                <thead style="background-color: #1BBCF2">
                    <tr>
                        <th>操作</th>
                        <th>状态</th>
                        <th>编号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>年级</th>
                        <th>借阅卡id</th>
                        <th>办卡时间</th>
                        <th>过期时间</th>
                        <th>身份证</th>
                        <th>手机</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Panel ID="plItem" runat="server">

                <tr>
                    <td>
                        <asp:LinkButton ID="lbtLost" CommandName="Stop" CommandArgument='<%#Eval("cardid") %>' runat="server">停借</asp:LinkButton>
                        <asp:LinkButton ID="lbtFind" CommandName="Allow" CommandArgument='<%#Eval("cardid") %>' runat="server">解停</asp:LinkButton>
                    </td>
                    <td><%#Eval("stop").ToString()=="True"?"<span style='color:green'>正常</span>":"<span style='color:red'>停借</span>" %></td>
                    <td><%#Eval("borrowerid") %></td>
                    <td><%#Eval("name") %></td>
                    <td><%#Eval("gender").ToString()=="True"?"<span style='color:blue'>男</span>":"<span style='color:blue'>女</span>" %></td>
                    <td><%#Eval("grade") %></td>
                    <td><%#Eval("cardid") %></td>
                    <td><%#Eval("handle_time") %></td>
                    <td><%#Eval("valid_time") %></td>
                    <td><%#Eval("ic_card") %></td>
                    <td><%#Eval("phone") %></td>
                </tr>
            </asp:Panel>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
