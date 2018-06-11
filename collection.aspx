<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="collection.aspx.cs" Inherits="collection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/collection.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="content">

        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:GridView ID="gvCollection" runat="server" Width="1260px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">请选择您要发布的组装方案：<asp:DropDownList ID="ddlRelease" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnRelease" runat="server" Text="发布" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

