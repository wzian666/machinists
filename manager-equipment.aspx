<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-equipment.aspx.cs" Inherits="manager_equipment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/manager-equipment.css" />
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
                    <asp:GridView ID="gvEquipment" runat="server" Width="1260px">
                    </asp:GridView>
                    <asp:LinqDataSource ID="ldsEquipment" runat="server">
                    </asp:LinqDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">请选择你要删除的设备名称：<asp:DropDownList ID="ddlName" runat="server" Width="300px">
                    </asp:DropDownList>
                    <asp:LinqDataSource ID="ldsName" runat="server">
                    </asp:LinqDataSource>
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="删除" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

