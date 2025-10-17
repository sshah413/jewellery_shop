<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JewellryShop.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Style for success messages (green) */
        .message-success {
            color: #155724;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            padding: .75rem 1.25rem;
            margin-bottom: 1rem;
            border-radius: .25rem;
            width: 100%;
            display: block;
            text-align: center;
        }

        /* Style for error messages (red) */
        .message-error {
            color: #721c24;
            background-color: #f8d7da;
            border-color: #f5c6cb;
            padding: .75rem 1.25rem;
            margin-bottom: 1rem;
            border-radius: .25rem;
            width: 100%;
            display: block;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-title-content">
                        <h1>Register</h1>
                        <ul class="breadcrumb">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="Register.apx" class="active">Register</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="page-content-wrapper" class="p-9">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 m-auto">
                    <div class="login-register-wrapper">
                        <div class="login-reg-form-wrap">
                            <div class="single-input-item">
                                 <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="False"></asp:Label>
                            </div>
                            <div class="single-input-item">
                                <asp:TextBox ID="txtfnm" runat="server" placeholder="First Name"></asp:TextBox>
                            </div>
                            <div class="single-input-item">
                                <asp:TextBox ID="txlnm" runat="server" placeholder="Last Name"></asp:TextBox>
                            </div>
                            <div class="single-input-item">
                                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" placeholder="Enter your Email"></asp:TextBox>
                            </div>
                             <div class="single-input-item">
                                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" placeholder="Phone Number"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password" placeholder="Confirm your Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="single-input-item">
                                <div class="login-reg-form-meta">
                                    <div class="remember-meta">
                                        <div class="custom-control custom-checkbox">
                                              <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="Login.aspx">Already have an Account</asp:HyperLink>.</p>
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-input-item">
                                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-login" OnClick="btnRegister_Click" />
                            </div>
                        </div>
                    </div>
                    </div>
            </div>
        </div>
    </div>
    </asp:Content>