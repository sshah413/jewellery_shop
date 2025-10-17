<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="JewellryShop.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- STYLES ARE THE SAME, NO CHANGES NEEDED --%>
    <style>
        .add-product-form .single-input-item select {
            width: 100%;
            height: 50px;
            border: 1px solid #e5e5e5;
            background-color: transparent;
            padding: 2px 20px;
            font-size: 14px;
            color: #898989;
        }

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
    <%-- Ensure this content is placed inside a <form runat="server"> tag in your Master Page or here --%>

    <div id="page-title-area">
        <%-- Page Title content is fine --%>
    </div>
    <div id="page-content-wrapper" class="p-9">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 m-auto">
                    <div class="login-register-wrapper">
                        <div class="login-reg-form-wrap add-product-form">
                            <h2>Product Details</h2>
                            <p>Fill out the form below to add a new item to the shop.</p>

                            <div class="single-input-item">
                                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            </div>

                            <div class="single-input-item">
                                <asp:TextBox ID="txtPName" runat="server" placeholder="Product Name"></asp:TextBox>
                            </div>
                            <div class="single-input-item">
                                <asp:TextBox ID="txtPDesc" runat="server" TextMode="MultiLine" Rows="5" placeholder="Product Description"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtPrice" runat="server" TextMode="Number" step="0.01" placeholder="Price (e.g., 52.00)"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:TextBox ID="txtSKU" runat="server" placeholder="SKU (e.g., RG-001)"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:DropDownList ID="ddlCategory" runat="server">
                                            <asp:ListItem Value="">Select a Category...</asp:ListItem>
                                            <asp:ListItem Value="Rings">Rings</asp:ListItem>
                                            <asp:ListItem Value="Necklaces">Necklaces</asp:ListItem>
                                            <asp:ListItem Value="Earrings">Earrings</asp:ListItem>
                                            <asp:ListItem Value="Bracelets">Bracelets</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="single-input-item">
                                        <asp:DropDownList ID="ddlBadge" runat="server">
                                            <asp:ListItem Value="">Select a Badge...</asp:ListItem>
                                            <asp:ListItem Value="None">None</asp:ListItem>
                                            <asp:ListItem Value="New">New</asp:ListItem>
                                            <asp:ListItem Value="Sale">Sale</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="single-input-item">
                                <label>Product Image</label>
                                <asp:FileUpload ID="flpimg" runat="server" />
                            </div>
                            <div class="single-input-item">
                                <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" CssClass="btn-login" OnClick="btnAddProduct_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
