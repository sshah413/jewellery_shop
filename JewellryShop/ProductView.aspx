<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="JewellryShop.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--== Search Box Area Start ==-->
    <div class="body-popup-modal-area">
        <span class="modal-close">
            <asp:Image ID="imgClose" runat="server" CssClass="img-fluid" ImageUrl="~/assets/img/cancel.png" AlternateText="Close" />
        </span>
        <div class="modal-container d-flex">
            <div class="search-box-area">
                <div class="search-box-form">
                    <asp:Panel ID="pnlSearch" runat="server">
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="type keyword and hit enter"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn" />
                    </asp:Panel>
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
                        <ul class="breadcrumb">
                            <li><asp:HyperLink ID="lnkHome" runat="server" NavigateUrl="~/index.aspx" Text="Home" /></li>
                            <li><asp:HyperLink ID="lnkShop" runat="server" NavigateUrl="~/shop.aspx" Text="Shop" /></li>
                            <li><asp:HyperLink ID="lnkSingleProduct" runat="server" NavigateUrl="~/single-product.aspx" Text="Crown Summit Backpack" /></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== Page Title Area End ==-->

    <!--== Page Content Wrapper Start ==-->
    <div id="page-content-wrapper" class="p-9">
        <div class="ruby-container">
            <div class="row">
                <!-- Single Product Page Content Start -->
                <div class="col-lg-12">
                    <div class="single-product-page-content">
                        <div class="row">
                            <!-- Product Thumbnail Start -->
                            <div class="col-lg-5">
                                <div class="product-thumbnail-wrap">
                                    <asp:Image ID="imgProductThumbnail" runat="server" CssClass="img-fluid" AlternateText="Product" />
                                </div>
                            </div>
                            <!-- Product Thumbnail End -->

                            <!-- Product Details Start -->
                            <div class="col-lg-7 mt-5 mt-lg-0">
                                <div class="product-details">
                                    <h2><asp:Label ID="lblProductName" runat="server" Text="Crown Summit Backpack"></asp:Label></h2>

                                    <div class="rating">
                                        <asp:Label ID="lblRating" runat="server" ></asp:Label>
                                        <i class="fa fa-star"></i>
                                    </div>

                                    <span class="price"><asp:Label ID="lblPrice" runat="server" ></asp:Label></span>

                                    <div class="product-info-stock-sku">
                                        <span class="product-stock-status"><asp:Label ID="lblStockStatus" runat="server" ></asp:Label></span>
                                        <span class="product-sku-status ml-5"><strong>SKU</strong> <asp:Label ID="lblSKU" runat="server" ></asp:Label></span>
                                    </div>

                                    <p class="products-desc">
                                        <asp:Label ID="lblShortDescription" runat="server" 
                                                   Text="Ideal for cold-weathered training worked lorem ipsum outdoors,
                                                   the Chaz Hoodie promises superior warmth with every wear."></asp:Label>
                                    </p>

                                    <div class="product-quantity d-flex align-items-center">
                                        <div class="quantity-field">
                                            <asp:Label ID="lblQty" runat="server" Text="Qty" AssociatedControlID="txtQty"></asp:Label>
                                            <asp:TextBox ID="txtQty" runat="server" TextMode="Number" Text="1" Width="60px"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-add-to-cart" OnClick="btnAddToCart_Click" />
                                    </div>
                                </div>
                            </div>
                            <!-- Product Details End -->
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <!-- Product Full Description Start -->
                                <div class="product-full-info-reviews">
                                    <nav class="nav" id="nav-tab">
                                        <a class="active" id="description-tab" data-toggle="tab" href="#description">Description</a>
                                    </nav>

                                    <div class="tab-content" id="nav-tabContent">
                                        <div class="tab-pane fade show active" id="description">
                                            <asp:Literal ID="litFullDescription" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <!-- Product Full Description End -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Product Page Content End -->
            </div>
        </div>
    </div>
    <!--== Page Content Wrapper End ==-->
</asp:Content>
