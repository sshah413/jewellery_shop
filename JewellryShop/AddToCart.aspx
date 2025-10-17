<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="JewellryShop.AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--== Search Box Area Start ==-->
    <div class="body-popup-modal-area">
        <span class="modal-close">
            <img src="assets/img/cancel.png" alt="Close" class="img-fluid" /></span>
        <div class="modal-container d-flex">
            <div class="search-box-area">
                <div class="search-box-form">
                    <form action="#" method="post">
                        <input type="search" placeholder="type keyword and hit enter" />
                        <button class="btn" type="button"><i class="fa fa-search"></i></button>
                    </form>
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
                        <h1>Shopping Cart</h1>
                        <ul class="breadcrumb">
                            <li>
                                <asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/Index.aspx" Text="Home" />
                            </li>
                            <li>
                                <asp:HyperLink ID="lnkShop" runat="server" NavigateUrl="~/Shop.aspx" Text="Shop" />
                            </li>
                            <li>
                                <asp:Label ID="lblCart" runat="server" Text="Cart" CssClass="active"></asp:Label>
                            </li>
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
            <!-- Cart Page Content Start -->
            <div class="row">
                <div class="col-lg-12">
                    <!-- Cart Table Area -->
                    <div class="cart-table table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="pro-thumbnail">Thumbnail</th>
                                    <th class="pro-title">Product</th>
                                    <th class="pro-price">Price</th>
                                    <th class="pro-quantity">Quantity</th>
                                    <th class="pro-subtotal">Total</th>
                                    <th class="pro-remove">Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptCartProduct" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="pro-thumbnail">
                                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# "Images/" + Eval("Image") %>' CssClass="img-fluid" />
                                            </td>
                                            <td class="pro-title">
                                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("PName") %>'></asp:Label>
                                            </td>
                                            <td class="pro-price">
                                                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                            </td>
                                            <td class="pro-quantity">
                                                <div class="pro-qty">
                                                    <asp:TextBox ID="txtQty" runat="server" Text='<%# Eval("qty") %>' CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </td>
                                            <td class="pro-subtotal">
                                                <asp:Label ID="lblTotal" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                            </td>
                                            <td class="pro-remove">
                                                <a href="#"><i class="fa fa-trash-o"></i></a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                    <!-- Cart Update Option -->
                    <div class="cart-update-option d-block d-lg-flex">
                        <div class="apply-coupon-wrapper">
                        </div>
                        <div class="cart-update">
                            <asp:Button ID="btnUpdateCart" runat="server" Text="Update Cart" CssClass="btn-add-to-cart" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Cart Calculation Area -->
            <div class="row">
                <div class="col-lg-6 ml-auto">
                    <div class="cart-calculator-wrapper">
                        <h3>Cart Totals</h3>
                        <div class="cart-calculate-items">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tr>
                                        <td>Sub Total</td>
                                        <td>
                                            <asp:Label ID="lblSubTotal" runat="server" Text="$230"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Shipping</td>
                                        <td>
                                            <asp:Label ID="lblShipping" runat="server" Text="$70"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td class="total-amount">
                                            <asp:Label ID="lblGrandTotal" runat="server" Text="$300"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <asp:HyperLink ID="lnkCheckout" runat="server" NavigateUrl="~/Checkout.aspx" CssClass="btn-add-to-cart" Text="Proceed To Checkout" />
                    </div>
                </div>
            </div>
            <!-- Cart Page Content End -->
        </div>
    </div>
    <!--== Page Content Wrapper End ==-->

</asp:Content>
