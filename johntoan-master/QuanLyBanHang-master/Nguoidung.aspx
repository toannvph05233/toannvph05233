<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nguoidung.aspx.cs" Inherits="Nguoidung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <h1>Người dùng</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaTaiKhoan" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <EditItemTemplate>

             MaTaiKhoan:
             <asp:Label ID="MaTaiKhoanLabel1" runat="server" Text='<%# Eval("MaTaiKhoan") %>' />
             <br />
             MatKhau:
             <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
             <br />
             HoTen:
             <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
             <br />
             GioiTinh:
             <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
             <br />
             DiaChi:
             <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
             <br />
             ChucVu:
             <asp:TextBox ID="ChucVuTextBox" runat="server" Text='<%# Bind("ChucVu") %>' />
             <br />
            
           
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <InsertItemTemplate>

            MaTaiKhoan:
            <asp:TextBox ID="MaTaiKhoanTextBox" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
            <br />
            MatKhau:
            <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            ChucVu:
            <asp:TextBox ID="ChucVuTextBox" runat="server" Text='<%# Bind("ChucVu") %>' />
            <br />


         
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>


            MaTaiKhoan:
            <asp:Label ID="MaTaiKhoanLabel" runat="server" Text='<%# Eval("MaTaiKhoan") %>' />
            <br />
            MatKhau:
            <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Bind("MatKhau") %>' />
            <br />
            HoTen:
            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            DiaChi:
            <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            ChucVu:
            <asp:Label ID="ChucVuLabel" runat="server" Text='<%# Bind("ChucVu") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />


        </ItemTemplate>
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [MaTaiKhoan] = @MaTaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([MaTaiKhoan], [MatKhau], [HoTen], [GioiTinh], [DiaChi], [ChucVu]) VALUES (@MaTaiKhoan, @MatKhau, @HoTen, @GioiTinh, @DiaChi, @ChucVu)" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [MatKhau] = @MatKhau, [HoTen] = @HoTen, [GioiTinh] = @GioiTinh, [DiaChi] = @DiaChi, [ChucVu] = @ChucVu WHERE [MaTaiKhoan] = @MaTaiKhoan">
            <DeleteParameters>
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="ChucVu" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MatKhau" Type="String" />
                <asp:Parameter Name="HoTen" Type="String" />
                <asp:Parameter Name="GioiTinh" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="ChucVu" Type="Int32" />
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

