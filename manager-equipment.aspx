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
                    <asp:GridView ID="gvEquipment" runat="server" Width="1260px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ldsEquipment">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="序号" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                            <asp:BoundField DataField="name" HeaderText="设备名" SortExpression="name" />
                            <asp:BoundField DataField="Expr1" HeaderText="类别" SortExpression="Expr1" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <HeaderStyle BackColor="#66FFFF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="ldsEquipment" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM Equipment" SelectCommand="SELECT Equipment.id, Equipment.name, Category.name AS Expr1 FROM Equipment INNER JOIN Category ON Equipment.category = Category.id"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="font-size: large; text-align: left">请输入设备名称：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <br />
                    请选择设备类别：<asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="ldsCategory" DataTextField="name" DataValueField="name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="ldsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [name] FROM [Category]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="添加" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

