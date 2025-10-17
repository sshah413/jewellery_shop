<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="JewellryShop.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .message-success { color: #155724; background-color: #d4edda; border: 1px solid #c3e6cb; padding: .75rem 1.25rem; margin-bottom: 1rem; border-radius: .25rem; text-align: center; }
        .message-error { color: #721c24; background-color: #f8d7da; border-color: #f5c6cb; padding: .75rem 1.25rem; margin-bottom: 1rem; border-radius: .25rem; text-align: center; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--== Search Box Area Start ==-->
    <div class="body-popup-modal-area">
        <span class="modal-close"><img src="assets/img/cancel.png" alt="Close" class="img-fluid"/></span>
        <div class="modal-container d-flex">
            <div class="search-box-area">
                <div class="search-box-form">
                    <input type="search" placeholder="type keyword and hit enter"/>
                    <button class="btn" type="button"><i class="fa fa-search"></i></button>
                </div>
            </div>
        </div>
    </div>
    <!--== Search Box Area End ==-->

    <!--== Page Title Area Start ==-->
    <div id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-title-content">
                        <h1>Contact Us</h1>
                        <ul class="breadcrumb">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="Contact.aspx" class="active">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== Page Title Area End ==-->

    <!--== Page Content Wrapper Start ==-->
    <div id="page-content-wrapper" class="p-9">
        <div class="container">
            <div class="row">
                <!-- Contact Page Content Start -->
                <div class="col-lg-12">
                    <!-- Contact Method Start -->
                    <div class="contact-method-wrap">
                        <div class="row">
                            <!-- Single Method Start -->
                            <div class="col-lg-3 col-sm-6 text-center">
                                <div class="contact-method-item">
                                    <span class="method-icon"><i class="fa fa-map-marker"></i></span>
                                    <div class="method-info">
                                        <h3>Street Address</h3>
                                        <asp:Label ID="lblAddress" runat="server" Text="Address : No 40 Baria Sreet 133/2 <br> NewYork City, NY, United States."></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Method End -->

                            <!-- Single Method Start -->
                            <div class="col-lg-3 col-sm-6 text-center">
                                <div class="contact-method-item">
                                    <span class="method-icon"><i class="fa fa-phone"></i></span>
                                    <div class="method-info">
                                        <h3>Phone Number</h3>
                                        <asp:HyperLink ID="hlPhone1" runat="server" NavigateUrl="tel:0(1234)56789012">0(1234) 567 89012</asp:HyperLink><br />
                                        <asp:HyperLink ID="hlPhone2" runat="server" NavigateUrl="tel:0(1323)46689012">0(1323) 466 89012</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Method End -->

                            <!-- Single Method Start -->
                            <div class="col-lg-3 col-sm-6 text-center">
                                <div class="contact-method-item">
                                    <span class="method-icon"><i class="fa fa-envelope-open-o"></i></span>
                                    <div class="method-info">
                                        <h3>Number Fax</h3>
                                        <asp:Label ID="lblFax" runat="server" Text="+1 323 555 1234 <br> +1 267 555 12342"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Method End -->

                            <!-- Single Method Start -->
                            <div class="col-lg-3 col-sm-6 text-center">
                                <div class="contact-method-item">
                                    <span class="method-icon"><i class="fa fa-envelope"></i></span>
                                    <div class="method-info">
                                        <h3>Email Address</h3>
                                        <asp:HyperLink ID="hlEmail1" runat="server" NavigateUrl="mailto:your@email.here">your@email.here</asp:HyperLink><br />
                                        <asp:HyperLink ID="hlEmail2" runat="server" NavigateUrl="mailto:your@email.here">your@email.here</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Method End -->
                        </div>
                    </div>
                    <!-- Contact Method End -->
                </div>
                <!-- Contact Page Content End -->
            </div>

            <div class="row">
                <!-- Contact Form Start -->
                <div class="col-lg-9 m-auto">
                    <div class="contact-form-wrap">
                        <h2>Request a Quote</h2>
                        <div id="Div1" runat="server">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name *"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name *"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email Address *"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject *"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="6" placeholder="Message"></asp:TextBox>
                                    </div>
                                    <div class="single-input-item text-center">
                                        <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="btn-add-to-cart" OnClick="btnSendMessage_Click" />
                                    </div>
                                    <!-- Form Notification -->
                                    <div class="form-messege">
                                        <asp:Label ID="lblFormMessage" runat="server" EnableViewState="false"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Contact Form End -->
            </div>
        </div>
    </div>
    <!--== Page Content Wrapper End ==-->
</asp:Content>
