<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/register.css" />
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
                <td style="font-size: large; text-align: right">请输入用户名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">请输入密码：</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">请重新输入密码：</td>
                <td>
                    <asp:TextBox ID="txtPasswordAgain" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Button ID="btnSubmit" runat="server" Text="注册" OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <asp:Button ID="btnRefresh" runat="server" Text="重置" OnClick="btnRefresh_Click" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

