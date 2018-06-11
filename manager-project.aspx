<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-project.aspx.cs" Inherits="manager_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/manager-project.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="content">

        <asp:GridView ID="gvProject" runat="server" Width="1260px">
        </asp:GridView>
        <asp:LinqDataSource ID="ldsProject" runat="server">
        </asp:LinqDataSource>

    </div>
</asp:Content>

