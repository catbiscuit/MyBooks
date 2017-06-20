<%@ Page Title="" Language="C#" MasterPageFile="~/main/MasterPage.Master" AutoEventWireup="true" CodeBehind="DownloadExcel.aspx.cs" Inherits="Web.main.DownloadExcel" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDown" runat="server" Text="下载" OnClick="btnDown_Click" />
    
    <asp:GridView runat="server" ID="g1" AutoGenerateColumns="true" Width="100%"></asp:GridView>
</asp:Content>
