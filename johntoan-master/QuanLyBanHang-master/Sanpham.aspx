<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sanpham.aspx.cs" Inherits="Sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h1>Loại sản phẩm</h1><hr />

        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal">
            <EditItemTemplate>

                 MaSanPham:
                 <asp:Label ID="MaSanPhamLabel1" runat="server" Text='<%# Eval("MaSanPham") %>' />
                 <br />
                 MaLoai:
                 <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
                 <br />
                 TenSanPham:
                 <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
                 <br />
                 DonGia:
                 <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                 <br />
                 SoLuong:
                 <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                 <br />
                 ChiTiet:
                 <asp:TextBox ID="ChiTietTextBox" runat="server" Text='<%# Bind("ChiTiet") %>' />
                 <br />
                 GhiChu:
                 <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                 <br />

              
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>

                      MaSanPham:
                      <asp:TextBox ID="MaSanPhamTextBox" runat="server" Text='<%# Bind("MaSanPham") %>' />
                      <br />
                      MaLoai:
                      <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
                      <br />
                      TenSanPham:
                      <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
                      <br />
                      DonGia:
                      <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                      <br />
                      SoLuong:
                      <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                      <br />
                      ChiTiet:
                      <asp:TextBox ID="ChiTietTextBox" runat="server" Text='<%# Bind("ChiTiet") %>' />
                      <br />
                      GhiChu:
                      <asp:TextBox ID="GhiChuTextBox" runat="server" Text='<%# Bind("GhiChu") %>' />
                      <br />
               
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                  
                    MaSanPham:
                    <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSanPham") %>' />
                    <br />
                    MaLoai:
                    <asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Bind("MaLoai") %>' />
                    <br />
                    TenSanPham:
                    <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSanPham") %>' />
                    <br />
                    DonGia:
                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
                    <br />
                    SoLuong:
                    <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                    <br />
                    ChiTiet:
                    <asp:Label ID="ChiTietLabel" runat="server" Text='<%# Bind("ChiTiet") %>' />
                    <br />
                    GhiChu:
                    <asp:Label ID="GhiChuLabel" runat="server" Text='<%# Bind("GhiChu") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

               
                
               
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaSanPham], [MaLoai], [TenSanPham], [DonGia], [SoLuong], [ChiTiet], [GhiChu]) VALUES (@MaSanPham, @MaLoai, @TenSanPham, @DonGia, @SoLuong, @ChiTiet, @GhiChu)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [ChiTiet] = @ChiTiet, [GhiChu] = @GhiChu WHERE [MaSanPham] = @MaSanPham">
            <DeleteParameters>
                <asp:Parameter Name="MaSanPham" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSanPham" Type="String" />
                <asp:Parameter Name="MaLoai" Type="String" />
                <asp:Parameter Name="TenSanPham" Type="String" />
                <asp:Parameter Name="DonGia" Type="Double" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="ChiTiet" Type="String" />
                <asp:Parameter Name="GhiChu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLoai" Type="String" />
                <asp:Parameter Name="TenSanPham" Type="String" />
                <asp:Parameter Name="DonGia" Type="Double" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="ChiTiet" Type="String" />
                <asp:Parameter Name="GhiChu" Type="String" />
                <asp:Parameter Name="MaSanPham" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

