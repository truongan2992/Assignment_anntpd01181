<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SanPham.aspx.vb" Inherits="SanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Masanpham" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Masanpham" HeaderText="Masanpham" ReadOnly="True" SortExpression="Masanpham" />
                <asp:BoundField DataField="Maloaisanpham" HeaderText="Maloaisanpham" SortExpression="Maloaisanpham" />
                <asp:BoundField DataField="Tensanpham" HeaderText="Tensanpham" SortExpression="Tensanpham" />
                <asp:BoundField DataField="LoaiSanPham" HeaderText="LoaiSanPham" SortExpression="LoaiSanPham" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anntpd01181_asConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [Masanpham] = @Masanpham" InsertCommand="INSERT INTO [SanPham] ([Masanpham], [Maloaisanpham], [Tensanpham], [LoaiSanPham]) VALUES (@Masanpham, @Maloaisanpham, @Tensanpham, @LoaiSanPham)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [Maloaisanpham] = @Maloaisanpham, [Tensanpham] = @Tensanpham, [LoaiSanPham] = @LoaiSanPham WHERE [Masanpham] = @Masanpham">
            <DeleteParameters>
                <asp:Parameter Name="Masanpham" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Masanpham" Type="String" />
                <asp:Parameter Name="Maloaisanpham" Type="String" />
                <asp:Parameter Name="Tensanpham" Type="String" />
                <asp:Parameter Name="LoaiSanPham" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Maloaisanpham" Type="String" />
                <asp:Parameter Name="Tensanpham" Type="String" />
                <asp:Parameter Name="LoaiSanPham" Type="String" />
                <asp:Parameter Name="Masanpham" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Masanpham" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Masanpham:
                <asp:Label ID="MasanphamLabel1" runat="server" Text='<%# Eval("Masanpham") %>' />
                <br />
                Maloaisanpham:
                <asp:TextBox ID="MaloaisanphamTextBox" runat="server" Text='<%# Bind("Maloaisanpham") %>' />
                <br />
                Tensanpham:
                <asp:TextBox ID="TensanphamTextBox" runat="server" Text='<%# Bind("Tensanpham") %>' />
                <br />
                LoaiSanPham:
                <asp:TextBox ID="LoaiSanPhamTextBox" runat="server" Text='<%# Bind("LoaiSanPham") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Masanpham:
                <asp:TextBox ID="MasanphamTextBox" runat="server" Text='<%# Bind("Masanpham") %>' />
                <br />
                Maloaisanpham:
                <asp:TextBox ID="MaloaisanphamTextBox" runat="server" Text='<%# Bind("Maloaisanpham") %>' />
                <br />
                Tensanpham:
                <asp:TextBox ID="TensanphamTextBox" runat="server" Text='<%# Bind("Tensanpham") %>' />
                <br />
                LoaiSanPham:
                <asp:TextBox ID="LoaiSanPhamTextBox" runat="server" Text='<%# Bind("LoaiSanPham") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Masanpham:
                <asp:Label ID="MasanphamLabel" runat="server" Text='<%# Eval("Masanpham") %>' />
                <br />
                Maloaisanpham:
                <asp:Label ID="MaloaisanphamLabel" runat="server" Text='<%# Bind("Maloaisanpham") %>' />
                <br />
                Tensanpham:
                <asp:Label ID="TensanphamLabel" runat="server" Text='<%# Bind("Tensanpham") %>' />
                <br />
                LoaiSanPham:
                <asp:Label ID="LoaiSanPhamLabel" runat="server" Text='<%# Bind("LoaiSanPham") %>' />
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
