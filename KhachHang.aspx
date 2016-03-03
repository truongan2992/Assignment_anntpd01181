<%@ Page Language="VB" AutoEventWireup="false" CodeFile="KhachHang.aspx.vb" Inherits="KhachHang" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Makhachhang" DataSourceID="SqlDataSource1" 
            
                style="margin-right: 1px; color: #FF6600; font-size: large; font-family: 'Times New Roman', Times, serif; background-color: #FFFFCC;" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="618px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Makhachhang" HeaderText="Makhachhang" 
                    ReadOnly="True" SortExpression="Makhachhang" />
                <asp:BoundField DataField="Tenkhachhang" HeaderText="Tenkhachhang" 
                    SortExpression="Tenkhachhang" />
                <asp:BoundField DataField="Diachi" HeaderText="Diachi" 
                    SortExpression="Diachi" />
                <asp:BoundField DataField="Sodienthoai" HeaderText="Sodienthoai" 
                    SortExpression="Sodienthoai" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:anntpd01181_asConnectionString2 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [Makhachhang] = @Makhachhang" InsertCommand="INSERT INTO [KhachHang] ([Makhachhang], [Tenkhachhang], [Diachi], [Sodienthoai]) VALUES (@Makhachhang, @Tenkhachhang, @Diachi, @Sodienthoai)" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [Tenkhachhang] = @Tenkhachhang, [Diachi] = @Diachi, [Sodienthoai] = @Sodienthoai WHERE [Makhachhang] = @Makhachhang">
                <DeleteParameters>
                    <asp:Parameter Name="Makhachhang" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Makhachhang" Type="String" />
                    <asp:Parameter Name="Tenkhachhang" Type="String" />
                    <asp:Parameter Name="Diachi" Type="String" />
                    <asp:Parameter Name="Sodienthoai" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Tenkhachhang" Type="String" />
                    <asp:Parameter Name="Diachi" Type="String" />
                    <asp:Parameter Name="Sodienthoai" Type="Int32" />
                    <asp:Parameter Name="Makhachhang" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Makhachhang" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    Makhachhang:
                    <asp:Label ID="MakhachhangLabel1" runat="server" Text='<%# Eval("Makhachhang") %>' />
                    <br />
                    Tenkhachhang:
                    <asp:TextBox ID="TenkhachhangTextBox" runat="server" Text='<%# Bind("Tenkhachhang") %>' />
                    <br />
                    Diachi:
                    <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                    <br />
                    Sodienthoai:
                    <asp:TextBox ID="SodienthoaiTextBox" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Makhachhang:
                    <asp:TextBox ID="MakhachhangTextBox" runat="server" Text='<%# Bind("Makhachhang") %>' />
                    <br />
                    Tenkhachhang:
                    <asp:TextBox ID="TenkhachhangTextBox" runat="server" Text='<%# Bind("Tenkhachhang") %>' />
                    <br />
                    Diachi:
                    <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                    <br />
                    Sodienthoai:
                    <asp:TextBox ID="SodienthoaiTextBox" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Makhachhang:
                    <asp:Label ID="MakhachhangLabel" runat="server" Text='<%# Eval("Makhachhang") %>' />
                    <br />
                    Tenkhachhang:
                    <asp:Label ID="TenkhachhangLabel" runat="server" Text='<%# Bind("Tenkhachhang") %>' />
                    <br />
                    Diachi:
                    <asp:Label ID="DiachiLabel" runat="server" Text='<%# Bind("Diachi") %>' />
                    <br />
                    Sodienthoai:
                    <asp:Label ID="SodienthoaiLabel" runat="server" Text='<%# Bind("Sodienthoai") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    
    </div>
    </form>
</body>
</html>
