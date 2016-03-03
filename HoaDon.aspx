<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HoaDon.aspx.vb" Inherits="HoaDon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Mahoadon" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Mahoadon" HeaderText="Mahoadon" ReadOnly="True" SortExpression="Mahoadon" />
                <asp:BoundField DataField="Makhachhang" HeaderText="Makhachhang" SortExpression="Makhachhang" />
                <asp:BoundField DataField="Ngaylap" HeaderText="Ngaylap" SortExpression="Ngaylap" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anntpd01181_asConnectionString2 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [Mahoadon] = @Mahoadon" InsertCommand="INSERT INTO [HoaDon] ([Mahoadon], [Makhachhang], [Ngaylap]) VALUES (@Mahoadon, @Makhachhang, @Ngaylap)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [Makhachhang] = @Makhachhang, [Ngaylap] = @Ngaylap WHERE [Mahoadon] = @Mahoadon">
            <DeleteParameters>
                <asp:Parameter Name="Mahoadon" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Mahoadon" Type="String" />
                <asp:Parameter Name="Makhachhang" Type="String" />
                <asp:Parameter DbType="Date" Name="Ngaylap" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Makhachhang" Type="String" />
                <asp:Parameter DbType="Date" Name="Ngaylap" />
                <asp:Parameter Name="Mahoadon" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Mahoadon" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Mahoadon:
                <asp:Label ID="MahoadonLabel1" runat="server" Text='<%# Eval("Mahoadon") %>' />
                <br />
                Makhachhang:
                <asp:TextBox ID="MakhachhangTextBox" runat="server" Text='<%# Bind("Makhachhang") %>' />
                <br />
                Ngaylap:
                <asp:TextBox ID="NgaylapTextBox" runat="server" Text='<%# Bind("Ngaylap") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Mahoadon:
                <asp:TextBox ID="MahoadonTextBox" runat="server" Text='<%# Bind("Mahoadon") %>' />
                <br />
                Makhachhang:
                <asp:TextBox ID="MakhachhangTextBox" runat="server" Text='<%# Bind("Makhachhang") %>' />
                <br />
                Ngaylap:
                <asp:TextBox ID="NgaylapTextBox" runat="server" Text='<%# Bind("Ngaylap") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Mahoadon:
                <asp:Label ID="MahoadonLabel" runat="server" Text='<%# Eval("Mahoadon") %>' />
                <br />
                Makhachhang:
                <asp:Label ID="MakhachhangLabel" runat="server" Text='<%# Bind("Makhachhang") %>' />
                <br />
                Ngaylap:
                <asp:Label ID="NgaylapLabel" runat="server" Text='<%# Bind("Ngaylap") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
