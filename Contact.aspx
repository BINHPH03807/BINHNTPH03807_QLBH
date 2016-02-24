<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="Binhntph03807_QLBH.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Trang liên hệ.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>điện thoại:</h3>
        </header>
        <p>
            <span class="label">Di động:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">Bàn:</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">hỗ trợ:</span>
            <span><a href="mailto:Support@example.com">hotro@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">chăm sóc khách hàng:</span>
            <span><a href="mailto:General@example.com">chamsockhachhang@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            ngõ 426 đường láng- cầu giấy- hà nội<br />
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d931.1502643952141!2d105.8131528814351!3d21.00862305588114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac9da34ba53f%3A0xcaba2fe0b92bd7a2!2zTmfDtSA0MjYgTMOhbmcsIFRydW5nIEhvw6AsIMSQ4buRbmcgxJBhLCBIw6AgTuG7mWksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1456323058822" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </p>
    </section>
</asp:Content>