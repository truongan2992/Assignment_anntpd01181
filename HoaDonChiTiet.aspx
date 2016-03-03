<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HoaDonChiTiet.aspx.vb" Inherits="HoaDonChiTiet" %>

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
                <asp:BoundField DataField="Mahoadon" HeaderText="Mahoadon" SortExpression="Mahoadon" />
                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                <asp:BoundField DataField="Dongia" HeaderText="Dongia" SortExpression="Dongia" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anntpd01181_asConnectionString2 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [Masanpham] = @Masanpham" InsertCommand="INSERT INTO [ChiTietHoaDon] ([Masanpham], [Mahoadon], [Soluong], [Dongia]) VALUES (@Masanpham, @Mahoadon, @Soluong, @Dongia)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [Mahoadon] = @Mahoadon, [Soluong] = @Soluong, [Dongia] = @Dongia WHERE [Masanpham] = @Masanpham">
            <DeleteParameters>
                <asp:Parameter Name="Masanpham" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Masanpham" Type="String" />
                <asp:Parameter Name="Mahoadon" Type="String" />
                <asp:Parameter Name="Soluong" Type="Int32" />
                <asp:Parameter Name="Dongia" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Mahoadon" Type="String" />
                <asp:Parameter Name="Soluong" Type="Int32" />
                <asp:Parameter Name="Dongia" Type="Decimal" />
                <asp:Parameter Name="Masanpham" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Masanpham" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Masanpham:
                <asp:Label ID="MasanphamLabel1" runat="server" Text='<%# Eval("Masanpham") %>' />
                <br />
                Mahoadon:
                <asp:TextBox ID="MahoadonTextBox" runat="server" Text='<%# Bind("Mahoadon") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Dongia:
                <asp:TextBox ID="DongiaTextBox" runat="server" Text='<%# Bind("Dongia") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Masanpham:
                <asp:TextBox ID="MasanphamTextBox" runat="server" Text='<%# Bind("Masanpham") %>' />
                <br />
                Mahoadon:
                <asp:TextBox ID="MahoadonTextBox" runat="server" Text='<%# Bind("Mahoadon") %>' />
                <br />
                Soluong:
                <asp:TextBox ID="SoluongTextBox" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Dongia:
                <asp:TextBox ID="DongiaTextBox" runat="server" Text='<%# Bind("Dongia") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Masanpham:
                <asp:Label ID="MasanphamLabel" runat="server" Text='<%# Eval("Masanpham") %>' />
                <br />
                Mahoadon:
                <asp:Label ID="MahoadonLabel" runat="server" Text='<%# Bind("Mahoadon") %>' />
                <br />
                Soluong:
                <asp:Label ID="SoluongLabel" runat="server" Text='<%# Bind("Soluong") %>' />
                <br />
                Dongia:
                <asp:Label ID="DongiaLabel" runat="server" Text='<%# Bind("Dongia") %>' />
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
