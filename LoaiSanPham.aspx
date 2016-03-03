<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoaiSanPham.aspx.vb" Inherits="LoaiSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Maloaisanpham" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Maloaisanpham" HeaderText="Maloaisanpham" ReadOnly="True" SortExpression="Maloaisanpham" />
                <asp:BoundField DataField="Tenloaisanpham" HeaderText="Tenloaisanpham" SortExpression="Tenloaisanpham" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anntpd01181_asConnectionString2 %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [Maloaisanpham] = @Maloaisanpham" InsertCommand="INSERT INTO [LoaiSanPham] ([Maloaisanpham], [Tenloaisanpham]) VALUES (@Maloaisanpham, @Tenloaisanpham)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [Tenloaisanpham] = @Tenloaisanpham WHERE [Maloaisanpham] = @Maloaisanpham">
            <DeleteParameters>
                <asp:Parameter Name="Maloaisanpham" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Maloaisanpham" Type="String" />
                <asp:Parameter Name="Tenloaisanpham" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Tenloaisanpham" Type="String" />
                <asp:Parameter Name="Maloaisanpham" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Maloaisanpham" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Maloaisanpham:
                <asp:Label ID="MaloaisanphamLabel1" runat="server" Text='<%# Eval("Maloaisanpham") %>' />
                <br />
                Tenloaisanpham:
                <asp:TextBox ID="TenloaisanphamTextBox" runat="server" Text='<%# Bind("Tenloaisanpham") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Maloaisanpham:
                <asp:TextBox ID="MaloaisanphamTextBox" runat="server" Text='<%# Bind("Maloaisanpham") %>' />
                <br />
                Tenloaisanpham:
                <asp:TextBox ID="TenloaisanphamTextBox" runat="server" Text='<%# Bind("Tenloaisanpham") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Maloaisanpham:
                <asp:Label ID="MaloaisanphamLabel" runat="server" Text='<%# Eval("Maloaisanpham") %>' />
                <br />
                Tenloaisanpham:
                <asp:Label ID="TenloaisanphamLabel" runat="server" Text='<%# Bind("Tenloaisanpham") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
