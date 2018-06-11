<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager-project.aspx.cs" Inherits="manager_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Styles/manager-project.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="content">

        <asp:GridView ID="gvProject" runat="server" Width="1260px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ldsProject">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="序号" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="description" HeaderText="组装方案描述" SortExpression="description" />
                <asp:BoundField DataField="name" HeaderText="作者" SortExpression="name" />
                <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
                <asp:BoundField DataField="MM" HeaderText="内存" SortExpression="MM" />
                <asp:BoundField DataField="GPU" HeaderText="显卡" SortExpression="GPU" />
                <asp:BoundField DataField="SM" HeaderText="硬盘" SortExpression="SM" />
                <asp:BoundField DataField="board" HeaderText="主板" SortExpression="board" />
                <asp:BoundField DataField="release" HeaderText="发布状态" SortExpression="release" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <HeaderStyle BackColor="#66FFFF" />
        </asp:GridView>
        <asp:SqlDataSource ID="ldsProject" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM Projects" SelectCommand="SELECT Projects.id, Projects.description, Members.name, Projects.CPU, Projects.MM, Projects.GPU, Projects.SM, Projects.board, Projects.release FROM Projects INNER JOIN Members ON Projects.id = Members.id"></asp:SqlDataSource>

    </div>
</asp:Content>

