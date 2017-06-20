<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="Web.main.BookList" %>

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

    <%--  使用js和css实现隔行换色选择高亮
    <script type="text/javascript">
        //动态给js添加class属性
        function addClass(element, value) {
            if (!element.className) {
                element.className = value; //如果element本身不存在class,则直接添加class为value的值
            } else {
                element.className += " " + value; //如果element之前有一个class值，注意中间要多一个空格,然后再加上value的值
            }
        }

        //隔行换色
        function stripeTable() {
            var tables = document.getElementsByTagName("table"); //遍历文档中的所有table
            for (var i = 0; i < tables.length; i++) {
                var rows = document.getElementsByTagName("tr");
                for (var j = 0; j < rows.length; j++) {
                    if (j % 2 == 0) {
                        addClass(rows[j], "tablelight"); //如是偶数行，则添加class为odd的属性
                        //rows[j].setAttribute("class", "odd");
                    }
                }
            }
        }

        //鼠标经过时高亮显示
        function highlightRows() {
            var rows = document.getElementsByTagName("tr");
            for (var i = 0; i < rows.length; i++) {
                rows[i].oldClassName = rows[i].className; //首先保存之前的class值                
                rows[i].onmouseover = function () {
                    addClass(this, "tablemouse"); //鼠标经过时添加class为highlight的值
                }
                rows[i].onmouseout = function () {
                    this.className = this.oldClassName; //鼠标离开时还原之前的class值
                }
            }
        }

        window.onload = function () {
            stripeTable();
            highlightRows();
        }

    </script>--%>

    <script type="text/javascript">
        //弹出窗：更新页面
        function Edit(key) {
            url = "BookUpdate.aspx?key=" + key;
            ymPrompt.win({ title: '修改图书信息', iframe: { src: url, name: 'bookupdate' }, height: document.documentElement.clientHeight, width: document.documentElement.clientWidth });
        }
        //弹出窗：导入Excel表格
        function ExcelAdd() {
            ymPrompt.win({ title: '导入图书', iframe: { src: "InputExcel.aspx" }, height: 400, width: 700, maxBtn: true });
        }
    </script>


    <div style="border: groove; padding: 2px">
        <asp:Label runat="server" ID="nlblName">名称/拼音简码/ISBN</asp:Label>
        <asp:TextBox runat="server" ID="ntxtName"></asp:TextBox>
        <asp:Label runat="server" ID="nlblAuthor">作者</asp:Label>
        <asp:TextBox runat="server" ID="ntxtAuthor"></asp:TextBox>
        <asp:Label runat="server" ID="nlblPublisher">出版社</asp:Label>
        <asp:TextBox runat="server" ID="ntxtPublisher"></asp:TextBox>
        <asp:Label runat="server" ID="nlblPutinTime">入馆时间</asp:Label>
        <input runat="server" id="beginDate" type="text" onclick="WdatePicker()" />
        至
        <input runat="server" id="endDate" type="text" onclick="WdatePicker()" />
        <br />
        <asp:LinkButton ID="nlbtList" CommandName="List" runat="server" OnClick="nlbtList_Click">查询</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="nlbtRefresh" CommandName="List" runat="server" OnClick="nlbtRefresh_Click">刷新</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <a href="javascript:ExcelAdd()">导入电子表格</a>
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

    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate>
            <table border="1" style="width: 100%; text-align: center; border-collapse: collapse; font-size: 12px">
                <thead style="background-color: #1BBCF2">
                    <tr>
                        <th>操作</th>
                        <th>编号</th>
                        <th>名称</th>
                        <th>作者</th>
                        <th>ISBN</th>
                        <th>出版商</th>
                        <th>语言</th>
                        <th>价格</th>
                        <th>入馆时间</th>
                        <th>类别</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:Panel ID="plItem" runat="server">
                <tr>
                    <td>
                        <a href="javascript:Edit('<%#Eval("id") %>')">编辑</a>
                        <asp:LinkButton ID="lbtDelete" CommandName="Delete" CommandArgument='<%#Eval("id") %>' runat="server" OnClientClick="return confirm('确定删除吗？')">删除</asp:LinkButton>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblID" Text='<%#Eval("id") %>'></asp:Label></td>
                    <td><%#Eval("name") %></td>
                    <td><%#Eval("author") %></td>
                    <td><%#Eval("ISBN") %></td>
                    <td><%#Eval("publisher") %></td>
                    <td><%#Eval("language") %></td>
                    <td><%#Eval("price") %></td>
                    <td><%#Eval("putin_time") %></td>
                    <td><%#Eval("type") %></td>

                </tr>
            </asp:Panel>
            <%-- repeater控件自带的编辑操作。           
                         <asp:Panel ID="plEdit" runat="server">
                        <tr>
                            <td><asp:Label runat="server" ID="Label1" Text='<%#Eval("id") %>'></asp:Label></td>
                            <td><asp:TextBox ID="txtName" runat="server" Text='<%#Eval("name") %>'></asp:TextBox></td>
                            <td><asp:TextBox ID="txtAuthor" runat="server" Text='<%#Eval("author") %>'></asp:TextBox></td>
                            <td><asp:TextBox ID="txtPrice" runat="server" Text='<%#Eval("price") %>'></asp:TextBox></td>     
                             <td>
                                <asp:LinkButton ID="lbtCancel" CommandName="Cancel" CommandArgument='<%#Eval("id") %>' runat="server">取消</asp:LinkButton>
                                <asp:LinkButton ID="lbtUpdate" CommandName="Update" CommandArgument='<%#Eval("id") %>' runat="server">更新</asp:LinkButton>
                            </td>                       
                        </tr>
                    </asp:Panel>--%>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
