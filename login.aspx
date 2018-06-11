<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/login.css" />
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
                <td style="font-size: large; text-align: right">用户名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">密码：</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="lblRet" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Button ID="btnSubmit" runat="server" Text="登录" OnClick="btnSubmit_Click" />
                </td>
                <td style="font-size: large">还没有账号？<asp:LinkButton ID="lnkRegister" runat="server" Font-Size="Large" ForeColor="Blue" OnClick="lnkRegister_Click">点击注册</asp:LinkButton>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

