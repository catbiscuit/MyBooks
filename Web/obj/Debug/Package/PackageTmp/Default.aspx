<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Default" StylesheetTheme="index"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="background-color:#93ade3">
    <form id="form1" runat="server">
    <div id="loginWindow" style="margin:auto;margin-top:100px">
        <div id="loginBody">
            <div id="loginUp"></div>
            <div id="loginMiddle">
                <div id="loginTitle">用户登录</div>
                <div id="lineUp"></div>
                <div id="lineMiddle">
                    <h2>
                        用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </h2>
                    <h2>
                        密　码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </h2>
                </div>
                <div id="lineDown"></div>
                <div id="loginButton">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/login.gif" OnClick="ImageButton1_Click" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/logOut.gif" OnClientClick="window.opener=null; window.close();" />
                </div>
            </div>
            <div id="loginDown" style="color:blue;margin:auto">
                学生登录：用户名为借阅卡号，密码为空
            </div>
        </div>
        <div id="version">
            图书馆管理系统
            <br />
            版权支持：<a href="http://www.test.com.cn" target="_blank">http://www.test.com.cn</a>
        </div>
    </div>
    </form>
</body>
</html>
