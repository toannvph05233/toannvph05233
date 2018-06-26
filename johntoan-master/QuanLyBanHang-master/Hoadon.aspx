<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Hoadon.aspx.cs" Inherits="Hoadon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
      <h1><p style="color:#9400D3">Hóa đơn </p></h1>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaHoaDon" DataSourceID="SqlDataSource1">
            <EditItemTemplate>

                 <div class="form-group">
						<label>Mã Hóa đơn</label> <span style="color: red"></span><br />
						<asp:Label ID="MaHoaDonLabel1" CssClass="form-control" Width="300px" runat="server" Text='<%# Eval("MaHoaDon") %>' />
				</div>

                  <div class="form-group">
						<label>Mã Tài Khoản</label> <span style="color: red"></span><br />
						<asp:TextBox ID="MaTaiKhoanTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
				</div>
               <div class="form-group">
						<label>Địa chỉ giao hàng</label> <span style="color: red"></span><br />
						<asp:TextBox ID="DiaChiTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("DiaChi") %>' />
				</div>
                
                   <div class="form-group">
						<label>Số điện thoại</label> <span style="color: red"></span><br />
						<asp:TextBox ID="SdtTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("Sdt") %>' />
				</div>
                
                   <div class="form-group">
						<label>Ngày mua hàng</label> <span style="color: red"></span><br />
						<asp:TextBox ID="NgayMuaHangTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("NgayMuaHang") %>' />
				</div>
                
                
                <div class="form-group">
						<label>Trạng thái</label> <span style="color: red"></span><br />
						<asp:TextBox ID="TrangThaiTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TrangThai") %>' />
				</div>
                
               
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>

                <div class="form-group">
						<label>Mã Hóa đơn</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MaHoaDonTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaHoaDon") %>' />
				</div>

                  <div class="form-group">
						<label>Mã Tài Khoản</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MaTaiKhoanTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaTaiKhoan") %>' />
				</div>
               <div class="form-group">
						<label>Địa chỉ giao hàng</label> <span style="color: red"></span><br />
						<asp:TextBox ID="DiaChiTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("DiaChi") %>' />
				</div>
                
                   <div class="form-group">
						<label>Số điện thoại</label> <span style="color: red"></span><br />
						<asp:TextBox ID="SdtTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("Sdt") %>' />
				</div>
                
                   <div class="form-group">
						<label>Ngày mua hàng</label> <span style="color: red"></span><br />
						<asp:TextBox ID="NgayMuaHangTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("NgayMuaHang") %>' />
				</div>
                
                
                <div class="form-group">
						<label>Trạng thái</label> <span style="color: red"></span><br />
						<asp:TextBox ID="TrangThaiTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TrangThai") %>' />
				</div>
                

                
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton"  runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

                <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                               <thead>
                                    <tr>
                                        <th>Mã Hóa đơn</th>
                                        <th>Mã Người dùng</th>
                                        <th>Địa chỉ giao hàng</th>
                                        <th>Số điện thoại</th>
                                        <th>Ngày mua hàng</th>    
                                        <th>Trạng thái</th> 
                                        
                                        <th>Edit</th> 
                                        <th>Delete</th> 
                                        <th>New</th>    
                                    </tr>
                                </thead>
                            <tbody>
                                <tr>
                                    <td><asp:Label ID="MaHoaDonLabel" runat="server" Text='<%# Eval("MaHoaDon") %>' /></td>
                                     <td><asp:Label ID="MaTaiKhoanLabel" runat="server" Text='<%# Bind("MaTaiKhoan") %>' /></td>
                                     <td><asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' /></td>
                                     <td> <asp:Label ID="SdtLabel" runat="server" Text='<%# Bind("Sdt") %>' /></td>
                                     <td> <asp:Label ID="NgayMuaHangLabel" runat="server" Text='<%# Bind("NgayMuaHang") %>' /></td>
                                     <td>  <asp:Label ID="TrangThaiLabel" runat="server" Text='<%# Bind("TrangThai") %>' /></td>
                                    
                                    <td> <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                                    <td><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                                    <td><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>  


              
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([MaHoaDon], [MaTaiKhoan], [DiaChi], [Sdt], [NgayMuaHang], [TrangThai]) VALUES (@MaHoaDon, @MaTaiKhoan, @DiaChi, @Sdt, @NgayMuaHang, @TrangThai)" SelectCommand="SELECT [MaHoaDon], [MaTaiKhoan], [DiaChi], [Sdt], [NgayMuaHang], [TrangThai] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaTaiKhoan] = @MaTaiKhoan, [DiaChi] = @DiaChi, [Sdt] = @Sdt, [NgayMuaHang] = @NgayMuaHang, [TrangThai] = @TrangThai WHERE [MaHoaDon] = @MaHoaDon">
            <DeleteParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Sdt" Type="String" />
                <asp:Parameter Name="NgayMuaHang" Type="DateTime" />
                <asp:Parameter Name="TrangThai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaTaiKhoan" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="Sdt" Type="String" />
                <asp:Parameter Name="NgayMuaHang" Type="DateTime" />
                <asp:Parameter Name="TrangThai" Type="String" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

