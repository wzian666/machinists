<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login-success.aspx.cs" Inherits="login_success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/login-success.css" />
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
                <td style="font-size: xx-large; color: #FF0000; text-align: center">登录成功！</td>
            </tr>
            <tr>
                <td style="font-size: large">在线组装：立即开始组装属于你的“武器”吧！<asp:LinkButton ID="lnkDIY" runat="server" OnClick="lnkDIY_Click">点此进入</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="font-size: large">个人收藏：来看看你组装了哪些实用的计算机吧！<asp:LinkButton ID="lnkCollection" runat="server" OnClick="lnkCollection_Click">点此进入</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="font-size: large">装机交流：善于学习别人才能提高技术！<asp:LinkButton ID="lnkCommunication" runat="server" OnClick="lnkCommunication_Click">点此进入</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="font-size: large">我是管理员：<asp:LinkButton ID="lnkManager" runat="server" OnClick="lnkManager_Click">管理员入口</asp:LinkButton>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

