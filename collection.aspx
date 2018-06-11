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
                    <asp:GridView ID="gvCollection" runat="server" Width="1260px" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ldsCollection">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="description" HeaderText="组装方案描述" SortExpression="description" />
                            <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
                            <asp:BoundField DataField="MM" HeaderText="内存" SortExpression="MM" />
                            <asp:BoundField DataField="GPU" HeaderText="显卡" SortExpression="GPU" />
                            <asp:BoundField DataField="SM" HeaderText="硬盘" SortExpression="SM" />
                            <asp:BoundField DataField="board" HeaderText="主板" SortExpression="board" />
                            <asp:BoundField DataField="release" HeaderText="发布状态" SortExpression="release" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="ldsCollection" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [id], [description], [CPU], [MM], [GPU], [SM], [board], [release] FROM [Projects] WHERE ([author] = @author)">
                        <SelectParameters>
                            <asp:SessionParameter Name="author" SessionField="id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: right">请选择您要发布的组装方案：<asp:DropDownList ID="ddlRelease" runat="server" Width="200px" DataSourceID="ldsRelease" DataTextField="description" DataValueField="description">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsRelease" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT description FROM Projects"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="btnRelease" runat="server" Text="发布" OnClick="btnRelease_Click" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

