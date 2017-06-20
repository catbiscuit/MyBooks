<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Web.main.Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; text-align: center; border-collapse: collapse; font-size: 20px">
        <tr>
            <th>
                <br />
                <br />
                <br />
                <br />
                <p style="text-align:center">
                    <span id="localtime">2017-02-13 12:33:02  星期一</span>
                </p>
                <p style="text-align: center">                    
                    <script type="text/javascript">
                        function showLocale(objD) {
                            var str, colorhead, colorfoot;
                            var yy = objD.getYear();
                            if (yy < 1900) yy = yy + 1900;
                            var MM = objD.getMonth() + 1;
                            if (MM < 10) MM = '0' + MM;
                            var dd = objD.getDate();
                            if (dd < 10) dd = '0' + dd;
                            var hh = objD.getHours();
                            if (hh < 10) hh = '0' + hh;
                            var mm = objD.getMinutes();
                            if (mm < 10) mm = '0' + mm;
                            var ss = objD.getSeconds();
                            if (ss < 10) ss = '0' + ss;
                            var ww = objD.getDay();
                            if (ww == 0) colorhead = "<font color=\"red\">";
                            if (ww > 0 && ww < 6) colorhead = "<font color=\"red\">";
                            if (ww == 6) colorhead = "<font color=\"red\">";
                            if (ww == 0) ww = "星期日";
                            if (ww == 1) ww = "星期一";
                            if (ww == 2) ww = "星期二";
                            if (ww == 3) ww = "星期三";
                            if (ww == 4) ww = "星期四";
                            if (ww == 5) ww = "星期五";
                            if (ww == 6) ww = "星期六";
                            colorfoot = "</font>"
                            str = colorhead + yy + "-" + MM + "-" + dd + " " + hh + ":" + mm + ":" + ss + "  " + ww + colorfoot;
                            return (str);
                        };
                        function tick() {
                            var today;
                            today = new Date();
                            document.getElementById("localtime").innerHTML = showLocale(today);
                            window.setTimeout("tick()", 1000);
                        };
                        tick();
                    </script>
                    <asp:Literal ID="LiteralMsg" runat="server"></asp:Literal>
                </p>
            </th>
        </tr>
    </table>
</asp:Content>
