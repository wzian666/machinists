<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DIY.aspx.cs" Inherits="DIY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/DIY.css" />
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
                <td style="text-align: right">
                    <asp:DropDownList ID="ddlProj" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnImport" runat="server" Text="导入" />
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">CPU：</td>
                <td>
                    <asp:DropDownList ID="ddlCPU" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">内存：</td>
                <td>
                    <asp:DropDownList ID="ddlMM" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">显卡：</td>
                <td>
                    <asp:DropDownList ID="ddlGPU" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">硬盘：</td>
                <td>
                    <asp:DropDownList ID="ddlSM" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">主板：</td>
                <td>
                    <asp:DropDownList ID="ddlBoard" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="btnSubmit" runat="server" Text="保存" />
                </td>
                <td>
                    <asp:Button ID="btnRefresh" runat="server" Text="重置" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

