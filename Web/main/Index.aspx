<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.main.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>图书管理系统首页</title>

    <link rel="stylesheet" type="text/css" href="css/tabs/css/easyui.css" />
    <link rel="stylesheet" type="text/css" href="css/tabs/css/icon.css" />
    <script type="text/javascript" src="javascript/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="javascript/jquery.easyui.min.js"></script>

    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <%--<script src="javascript/jquery-1.8.0.js" type="text/javascript"></script>--%>
    <script src="javascript/showlist.js" type="text/javascript"></script>

    <script type="text/javascript" src="../App_Themes/ymPromt_config.js"></script>
    <script type="text/javascript" src="../App_Themes/ymPrompt.js"></script>
    <link href="../App_Themes/ymPrompt.css" rel="stylesheet" type="text/css" />

    <!--多标签管理-->
    <script type="text/javascript">
        $(function () {
            $('#tt').tabs({
                tools: [{
                    iconCls: 'icon-cancel',
                    handler: function () {
                        if (confirm('关闭全部标签')) {

                            var tabs = $("#tt").tabs("tabs");
                            var length = tabs.length;
                            for (var i = 0; i < length; i++) {
                                var onetab = tabs[1];
                                var title = onetab.panel('options').tab.text();
                                $("#tt").tabs("close", title);
                            }
                        }
                    }
                }]
            });
        });

        function setUrl(url, name,id) {
            //url不为空
            if (url != "" && url != null && url != undefined) {
                //不存在该标签页面
                if (!$('#tt').tabs('exists', name)) {
                    $('#tt').tabs('add',
                    {
                        title: name,
                        content: '<iframe src="' + url + '"class="iframe_content" style="width:100%;height:600px;" height=532 frameborder="0" name="'+name+'" id="'+id+'"></iframe> ',
                        iconCls: '',
                        closable: true,
                        width: '100%'
                    });
                }
                    //已经存在该页面
                else {
                    var tabsobj = $('#tt');
                    tabsobj.tabs('select', name);
                }
            }

        }
    </script>
    <!--弹出窗-->
    <script type="text/javascript">
        //弹出窗：更新页面
        function Change() {
            this.ymPrompt.win({ title: '修改用户密码', iframe: { src: "ChangePwd.aspx" }, height: 400, width: 700 });
        }
    </script>

    <style type="text/css">
        /*解决抖动问题*/
        html {
            overflow-y: scroll;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="logo">
            </div>
            <div id="operate">
                <div id="operatea">
                    <a href="javascript:Change()" class="changea">修改密码</a>
                </div>
                <div id="operatelabel">
                    <asp:LinkButton ID="btnLoginOut" runat="server" OnClick="btnLoginOut_Click">退出登录</asp:LinkButton>
                </div>
            </div>
        </div>
        <div id="nav">
            <div id="navLogin">
                当前登录者：<asp:Label ID="lblLoginUser" runat="server"></asp:Label>
            </div>
        </div>
        <div id="main">
            <div id="sider">
                <div class="operate">
                    <h3>功能清单
                    </h3>
                    <ul id="J_navlist" runat="server">
                    </ul>
                    <script type="text/javascript">navList();</script>
                </div>
            </div>
            <div id="container">
                <div id="content">
                    <div id="tt" style="width: 1200px; height: 700px">
                        <div title="首页">
                            <iframe id="ipage" name="main" src="Welcome.aspx" width="1200" height="700" frameborder="0" marginwidth="0" marginheight="0"></iframe>
                        </div>
                    </div>
                    <%--                    <div id="ContentPlace">
                    </div>--%>
                </div>
            </div>

            <div id="clear">
            </div>
        </div>
        <div id="footer">
            CopyRight 2016 , All Rights Reserved&reg; Recommended Resolution 1366×768
        </div>
    </form>
</body>
</html>
