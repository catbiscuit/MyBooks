﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BorrowList.aspx.cs" Inherits="Web.main.BorrowList" %>

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
        <asp:Label runat="server" ID="nlblReaderName">读者姓名</asp:Label>
        <asp:TextBox runat="server" ID="ntxtReaderName"></asp:TextBox>
        <asp:Label runat="server" ID="nlblBookName">书籍名称</asp:Label>
        <asp:TextBox runat="server" ID="ntxtBookName"></asp:TextBox>
        <asp:Label runat="server" ID="nlblPutinTime">借阅时间</asp:Label>
        <input runat="server" id="beginDate" type="text" onclick="WdatePicker()" />
        至
        <input runat="server" id="endDate" type="text" onclick="WdatePicker()" />
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
                        <th>借阅卡id</th>
                        <th>读者姓名</th>
                        <th>年级</th>
                        <th>书籍名称</th>
                        <th>ISBN</th>
                        <th>出版商</th>
                        <th>借阅时间</th>
                        <th>应还时间</th>
                        <th>实际归还时间</th>
                        <th>最近一次续借时间</th>
                        <th>续借应还时间</th>
                        <th>续借次数</th>
                        <th>续借操作人</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Panel ID="plItem" runat="server">
                <tr>
                    <td><%#Eval("borrow_id") %></td>
                    <td><%#Eval("name") %></td>
                    <td><%#Eval("grade") %></td>
                    <td><%#Eval("book_name") %></td>
                    <td><%#Eval("ISBN") %></td>
                    <td><%#Eval("publisher") %></td>
                    <td><%#Eval("out_time") %></td>                    
                    <td><%# Convert.ToDateTime(Eval("in_time").ToString())>DateTime.Now?"<span style='color:green'>"+Eval("in_time")+"</span>":"<span style='color:red'>"+Eval("in_time")+"</span>" %></td>                    
                    <td><%#Eval("reality_time") %></td>
                    <td><%#Eval("again_date") %></td>
                    <td><%# Eval("again_intime").ToString()==""?"":Convert.ToDateTime(Eval("again_intime").ToString())>DateTime.Now?"<span style='color:green'>"+Eval("again_intime")+"</span>":"<span style='color:red'>"+Eval("again_intime")+"</span>"%></td>                    
                    <td><%#Eval("again_count") %></td>
                    <td><%#Eval("manager") %></td>
                </tr>
            </asp:Panel>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>
