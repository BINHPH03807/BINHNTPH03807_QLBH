<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Binhntph03807_QLBH._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Trang Web hàng đầu thế giới về công nghệ.</h2>
            </hgroup>
            <p>
                Tiêu chí của chúng tôi là "Luôn luôn lắng nghe, lâu lâu mới hiểu". Các thành viên sẽ cảm thấy thật không thể tin nổi!!!
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Thông tin khách hàng</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách hàng<br />
            </h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MAKH" DataSourceID="SqlDataSource2" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="MAKH" HeaderText="MAKH" ReadOnly="True" SortExpression="MAKH" />
                    <asp:BoundField DataField="TENKH" HeaderText="TENKH" SortExpression="TENKH" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:binhntph03807_QLBHConnectionString %>" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [MAKH] = @MAKH" InsertCommand="INSERT INTO [KHACH_HANG] ([MAKH], [TENKH], [SDT], [DIACHI]) VALUES (@MAKH, @TENKH, @SDT, @DIACHI)" SelectCommand="SELECT * FROM [KHACH_HANG]" UpdateCommand="UPDATE [KHACH_HANG] SET [TENKH] = @TENKH, [SDT] = @SDT, [DIACHI] = @DIACHI WHERE [MAKH] = @MAKH">
                <DeleteParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="TENKH" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="DIACHI" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TENKH" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="DIACHI" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Hóa Đơn<br />
            </h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MAHD" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="MAHD" HeaderText="MAHD" ReadOnly="True" SortExpression="MAHD" />
                    <asp:BoundField DataField="MAKH" HeaderText="MAKH" SortExpression="MAKH" />
                    <asp:BoundField DataField="NGAYMUAHANG" HeaderText="NGAYMUAHANG" SortExpression="NGAYMUAHANG" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:binhntph03807_QLBHConnectionString %>" DeleteCommand="DELETE FROM [HOA_DON] WHERE [MAHD] = @MAHD" InsertCommand="INSERT INTO [HOA_DON] ([MAHD], [MAKH], [NGAYMUAHANG]) VALUES (@MAHD, @MAKH, @NGAYMUAHANG)" SelectCommand="SELECT * FROM [HOA_DON]" UpdateCommand="UPDATE [HOA_DON] SET [MAKH] = @MAKH, [NGAYMUAHANG] = @NGAYMUAHANG WHERE [MAHD] = @MAHD">
                <DeleteParameters>
                    <asp:Parameter Name="MAHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MAHD" Type="String" />
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="NGAYMUAHANG" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MAKH" Type="String" />
                    <asp:Parameter Name="NGAYMUAHANG" Type="DateTime" />
                    <asp:Parameter Name="MAHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Chi tiết hóa đơn<br />
            </h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="MAHD" HeaderText="MAHD" SortExpression="MAHD" />
                    <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
                    <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:binhntph03807_QLBHConnectionString %>" DeleteCommand="DELETE FROM [CHI_TIET_HOA_DON] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CHI_TIET_HOA_DON] ([ID], [MAHD], [MASP], [SOLUONG]) VALUES (@ID, @MAHD, @MASP, @SOLUONG)" SelectCommand="SELECT * FROM [CHI_TIET_HOA_DON]" UpdateCommand="UPDATE [CHI_TIET_HOA_DON] SET [MAHD] = @MAHD, [MASP] = @MASP, [SOLUONG] = @SOLUONG WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="MAHD" Type="String" />
                    <asp:Parameter Name="MASP" Type="String" />
                    <asp:Parameter Name="SOLUONG" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MAHD" Type="String" />
                    <asp:Parameter Name="MASP" Type="String" />
                    <asp:Parameter Name="SOLUONG" Type="Int32" />
                    <asp:Parameter Name="ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Sản Phẩm<br />
            </h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MASP" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MASP" HeaderText="MASP" ReadOnly="True" SortExpression="MASP" />
                    <asp:BoundField DataField="MALOAI" HeaderText="MALOAI" SortExpression="MALOAI" />
                    <asp:BoundField DataField="TENSP" HeaderText="TENSP" SortExpression="TENSP" />
                    <asp:BoundField DataField="GIASP" HeaderText="GIASP" SortExpression="GIASP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:binhntph03807_QLBHConnectionString %>" DeleteCommand="DELETE FROM [SAN_PHAM] WHERE [MASP] = @MASP" InsertCommand="INSERT INTO [SAN_PHAM] ([MASP], [MALOAI], [TENSP], [GIASP]) VALUES (@MASP, @MALOAI, @TENSP, @GIASP)" SelectCommand="SELECT * FROM [SAN_PHAM]" UpdateCommand="UPDATE [SAN_PHAM] SET [MALOAI] = @MALOAI, [TENSP] = @TENSP, [GIASP] = @GIASP WHERE [MASP] = @MASP">
                <DeleteParameters>
                    <asp:Parameter Name="MASP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MASP" Type="String" />
                    <asp:Parameter Name="MALOAI" Type="String" />
                    <asp:Parameter Name="TENSP" Type="String" />
                    <asp:Parameter Name="GIASP" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MALOAI" Type="String" />
                    <asp:Parameter Name="TENSP" Type="String" />
                    <asp:Parameter Name="GIASP" Type="Decimal" />
                    <asp:Parameter Name="MASP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Loại sản phẩm<br />
            </h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MALOAI" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MALOAI" HeaderText="MALOAI" ReadOnly="True" SortExpression="MALOAI" />
                    <asp:BoundField DataField="TEN_SP" HeaderText="TEN_SP" SortExpression="TEN_SP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:binhntph03807_QLBHConnectionString %>" DeleteCommand="DELETE FROM [LOAI_SAN_PHAM] WHERE [MALOAI] = @MALOAI" InsertCommand="INSERT INTO [LOAI_SAN_PHAM] ([MALOAI], [TEN_SP]) VALUES (@MALOAI, @TEN_SP)" SelectCommand="SELECT * FROM [LOAI_SAN_PHAM]" UpdateCommand="UPDATE [LOAI_SAN_PHAM] SET [TEN_SP] = @TEN_SP WHERE [MALOAI] = @MALOAI">
                <DeleteParameters>
                    <asp:Parameter Name="MALOAI" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MALOAI" Type="String" />
                    <asp:Parameter Name="TEN_SP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TEN_SP" Type="String" />
                    <asp:Parameter Name="MALOAI" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
