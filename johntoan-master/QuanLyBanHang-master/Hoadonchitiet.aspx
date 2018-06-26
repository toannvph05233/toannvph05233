<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Hoadonchitiet.aspx.cs" Inherits="Hoadonchitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <h1><p style="color:#9400D3">Hóa đơn chi tiết </p></h1>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaHoaDonCt" DataSourceID="SqlDataSource1">
        <EditItemTemplate>

             <div class="form-group">
						<label>Mã Hóa Đơn Chi Tiết</label> <span style="color: red"></span><br />
						<asp:Label ID="MaHoaDonCtLabel1" CssClass="form-control" Width="300px"  runat="server" Text='<%# Eval("MaHoaDonCt") %>' />
				</div>

           <div class="form-group">
						<label>Mã Hóa Đơn</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MaHoaDonTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaHoaDon") %>' />
				</div>
           <div class="form-group">
						<label>Mã Sản Phẩm</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MaSanPhamTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaSanPham") %>' />
				</div>
            
           <div class="form-group">
						<label>Tổng tiền</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="TongTienTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("TongTien") %>' />
				</div>
            
             
               <div class="form-group">
						<label>Số lượng</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="SoLuongTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("SoLuong") %>' />
				</div>
           
           
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>

             <div class="form-group">
						<label>Mã Hóa Đơn Chi Tiết</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="MaHoaDonCtTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaHoaDonCt") %>' />
				</div>

           <div class="form-group">
						<label>Mã Hóa Đơn</label> <span style="color: red"></span><br />
						   <asp:TextBox ID="MaHoaDonTextBox"  CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaHoaDon") %>' />
				</div>
           <div class="form-group">
						<label>Mã Sản Phẩm</label> <span style="color: red"></span><br />
						  <asp:TextBox ID="MaSanPhamTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("MaSanPham") %>' />
				</div>
            
           <div class="form-group">
						<label>Tổng tiền</label> <span style="color: red"></span><br />
						 <asp:TextBox ID="TongTienTextBox" CssClass="form-control" Width="300px"  runat="server" Text='<%# Bind("TongTien") %>' />
				</div>
            
       
               <div class="form-group">
						<label>Số lượng</label> <span style="color: red"></span><br />
						  <asp:TextBox ID="SoLuongTextBox" CssClass="form-control" Width="300px" runat="server" Text='<%# Bind("SoLuong") %>' />
				</div>
           

     
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>

            <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                               <thead>
                                    <tr>
                                        <th>Mã hóa đơn chi tiết</th>
                                        <th>Mã hóa đơn</th>
                                        <th>Mã sản phẩm</th>
                                        <th>Tổng tiền</th>
                                        <th>Số lượng</th>                                           
                                        <th>Edit</th> 
                                        <th>Delete</th> 
                                        <th>New</th>    
                                    </tr>
                                </thead>
                            <tbody>
                                <tr>
                                    <td> <asp:Label ID="MaHoaDonCtLabel" runat="server" Text='<%# Eval("MaHoaDonCt") %>' /></td>
                                     <td><asp:Label ID="MaHoaDonLabel" runat="server" Text='<%# Bind("MaHoaDon") %>' /></td>
                                     <td>   <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Bind("MaSanPham") %>' /></td>
                                     <td> <asp:Label ID="TongTienLabel" runat="server" Text='<%# Bind("TongTien") %>' /></td>
                                     <td> <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' /></td>
                                    
                                    <td><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                                    <td><asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                                    <td><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" /></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>  

         
           
        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDonChiTiet] WHERE [MaHoaDonCt] = @MaHoaDonCt" InsertCommand="INSERT INTO [HoaDonChiTiet] ([MaHoaDonCt], [MaHoaDon], [MaSanPham], [TongTien], [SoLuong]) VALUES (@MaHoaDonCt, @MaHoaDon, @MaSanPham, @TongTien, @SoLuong)" SelectCommand="SELECT [MaHoaDonCt], [MaHoaDon], [MaSanPham], [TongTien], [SoLuong] FROM [HoaDonChiTiet]" UpdateCommand="UPDATE [HoaDonChiTiet] SET [MaHoaDon] = @MaHoaDon, [MaSanPham] = @MaSanPham, [TongTien] = @TongTien, [SoLuong] = @SoLuong WHERE [MaHoaDonCt] = @MaHoaDonCt">
            <DeleteParameters>
                <asp:Parameter Name="MaHoaDonCt" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHoaDonCt" Type="Int32" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaSanPham" Type="String" />
                <asp:Parameter Name="TongTien" Type="Double" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaSanPham" Type="String" />
                <asp:Parameter Name="TongTien" Type="Double" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="MaHoaDonCt" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

