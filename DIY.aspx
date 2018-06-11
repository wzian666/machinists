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
                    为您的组装方案起个名吧：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">CPU：</td>
                <td>
                    <asp:DropDownList ID="ddlCPU" runat="server" Width="300px" DataSourceID="ldsCPU" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsCPU" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT name FROM Equipment WHERE (category = 1)"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">内存：</td>
                <td>
                    <asp:DropDownList ID="ddlMM" runat="server" Width="300px" DataSourceID="ldsMM" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsMM" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT name FROM Equipment WHERE (category = 2)"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">显卡：</td>
                <td>
                    <asp:DropDownList ID="ddlGPU" runat="server" Width="300px" DataSourceID="ldsGPU" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsGPU" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT name FROM Equipment WHERE (category = 3)"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">硬盘：</td>
                <td>
                    <asp:DropDownList ID="ddlSM" runat="server" Width="300px" DataSourceID="ldsSM" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsSM" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT name FROM Equipment WHERE (category = 4)"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">主板：</td>
                <td>
                    <asp:DropDownList ID="ddlBoard" runat="server" Width="300px" DataSourceID="ldsBoard" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsBoard" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT name FROM Equipment WHERE (category = 5)"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    <asp:Label ID="lblWrong" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Button ID="btnSubmit" runat="server" Text="保存" OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <asp:Button ID="btnRefresh" runat="server" Text="重置" OnClick="btnRefresh_Click" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

