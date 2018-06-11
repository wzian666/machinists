<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-index.aspx.cs" Inherits="manager_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/manager-index.css" />
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
                <td style="font-size: xx-large; text-align: center">
                    <asp:LinkButton ID="lnkUsers" runat="server" OnClick="lnkUsers_Click">用户管理</asp:LinkButton>
                </td>
                <td style="font-size: xx-large; text-align: center">
                    <asp:LinkButton ID="lnkEquipment" runat="server" OnClick="lnkEquipment_Click">设备管理</asp:LinkButton>
                </td>
                <td style="font-size: xx-large; text-align: center">
                    <asp:LinkButton ID="lnkProject" runat="server" OnClick="lnkProject_Click">方案管理</asp:LinkButton>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

