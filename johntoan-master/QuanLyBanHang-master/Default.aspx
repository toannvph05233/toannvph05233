<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <h1>Sản phẩm</h1>
        <style>
            h1 {
                color:#4cff00;
            }
        </style>
        <hr />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
               <div class="form-group">
						<label>Mã Sản Phẩm</label> <span style="color: red"></span><br />
						<asp:Label ID="MaSanPhamTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaSanPham") %>' />
				</div>

                  <div class="form-group">
						<label>Mã Loại</label> <span style="color: red"></span><br />
						<asp:TextBox ID="MaLoaiTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaLoai") %>' />
				  </div>
                 <div class="form-group">
						<label>Tên sản phẩm</label> <span style="color: red"></span><br />
						<asp:TextBox ID="TenSanPhamTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TenSanPham") %>' />
				  </div>
                 <div class="form-group">
						<label>Đơn giá</label> <span style="color: red"></span><br />
						<asp:TextBox ID="DonGiaTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("DonGia") %>' />
				  </div>
            
                <div class="form-group">
						<label>Số lượng</label> <span style="color: red"></span><br />
						<asp:TextBox ID="SoLuongTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("SoLuong") %>' />
				</div>
                 <div class="form-group">
						<label>Hình ảnh</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="ChiTietTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("ChiTiet") %>' />
				</div>
                <div class="form-group">
						<label>Ghi chú</label> <span style="color: red"></span><br />
						<asp:TextBox ID="GhiChuTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("GhiChu") %>' />
				</div>
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <div class="form-group">
						<label>Mã Sản Phẩm</label> <span style="color: red"></span><br />
						<asp:TextBox ID="MaSanPhamTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaSanPham") %>' />
				</div>

                  <div class="form-group">
						<label>Mã Loại</label> <span style="color: red"></span><br />
						<asp:TextBox ID="MaLoaiTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaLoai") %>' />
				  </div>
                 <div class="form-group">
						<label>Tên sản phẩm</label> <span style="color: red"></span><br />
						<asp:TextBox ID="TenSanPhamTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TenSanPham") %>' />
				  </div>
                 <div class="form-group">
						<label>Đơn giá</label> <span style="color: red"></span><br />
						<asp:TextBox ID="DonGiaTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("DonGia") %>' />
				  </div>
            
                <div class="form-group">
						<label>Số lượng</label> <span style="color: red"></span><br />
						<asp:TextBox ID="SoLuongTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("SoLuong") %>' />
				</div>
                 <div class="form-group">
						<label>Hình ảnh</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="ChiTietTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("ChiTiet") %>' />
				</div>
                <div class="form-group">
						<label>Ghi chú</label> <span style="color: red"></span><br />
						<asp:TextBox ID="GhiChuTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("GhiChu") %>' />
				</div>
               
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                               <thead>
                                    <tr>
                                        <th>Mã Sản Phẩm</th>
                                        <th>Loại Sản Phẩm</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Đơn giá</th>
                                        <th>Số lượng</th>    
                                        <th>Hình ảnh</th> 
                                        <th>Chi tiết sản phẩm</th>    
                                        <th>Edit</th> 
                                        <th>Delete</th> 
                                        <th>New</th>    
                                    </tr>
                                </thead>
                            <tbody>
                                <tr>
                                    <td><asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSanPham") %>' /></td>
                                     <td><asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Bind("MaLoai") %>' /></td>
                                     <td> <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSanPham") %>' /></td>
                                     <td><asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' /></td>
                                     <td> <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' /></td>
                                     <td> <asp:Label ID="ChiTietLabel" runat="server"  /> <asp:Image ID="Image1" Width="100px" Height="100px" runat="server" ImageUrl='<%# Bind("ChiTiet") %>'/></td>
                                     <td><asp:Label ID="GhiChuLabel" runat="server" Text='<%# Bind("GhiChu") %>' /></td>
                                    <td><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                                    <td><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                                    <td><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>   
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaSanPham], [MaLoai], [TenSanPham], [DonGia], [SoLuong], [ChiTiet], [GhiChu]) VALUES (@MaSanPham, @MaLoai, @TenSanPham, @DonGia, @SoLuong, @ChiTiet, @GhiChu)" SelectCommand="SELECT [MaSanPham], [MaLoai], [TenSanPham], [DonGia], [SoLuong], [ChiTiet], [GhiChu] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLoai] = @MaLoai, [TenSanPham] = @TenSanPham, [DonGia] = @DonGia, [SoLuong] = @SoLuong, [ChiTiet] = @ChiTiet, [GhiChu] = @GhiChu WHERE [MaSanPham] = @MaSanPham">
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

