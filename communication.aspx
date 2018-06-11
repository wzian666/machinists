<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="communication.aspx.cs" Inherits="communication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/communication.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="content">

        <asp:GridView ID="gvCommunication" runat="server" Height="720px" Width="1260px">
        </asp:GridView>

    </div>
</asp:Content>

