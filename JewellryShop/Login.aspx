<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JewellryShop.Login" %>

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
                        <h1>Login</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="login.html" class="active">Login</a></li>
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
                        <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="False"></asp:Label>
                        <div class="login-reg-form-wrap">
                            <h2>Login</h2>
                            <p>Don't have an account?
                                <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="Register.aspx">Create one here</asp:HyperLink>.</p>

                            <div class="single-input-item">
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your Email"></asp:TextBox>
                            </div>

                            <div class="single-input-item">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
                            </div>

                            <div class="single-input-item">
                                <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                    <div class="remember-meta">
                                        <div class="custom-control custom-checkbox">
                                            <asp:CheckBox ID="chkRememberMe" runat="server" CssClass="custom-control-input" />
                                            <asp:Label runat="server" AssociatedControlID="chkRememberMe" CssClass="custom-control-label">Remember Me</asp:Label>
                                        </div>
                                    </div>

                                    <asp:HyperLink ID="hlForgotPassword" runat="server" CssClass="forget-pwd" NavigateUrl="#">Forget Password?</asp:HyperLink>
                                </div>
                            </div>

                            <div class="single-input-item">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
