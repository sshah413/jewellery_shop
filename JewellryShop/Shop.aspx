<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="JewellryShop.Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--== Page Title Area Start ==-->
    <div id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-title-content">
                        <h1>Shop</h1>
                        <ul class="breadcrumb">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="Shop.aspx" class="active">Shop</a></li>
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
                <!-- Shop Page Content Start -->
                <div class="col-lg-12">
                    <div class="shop-page-content-wrap">
                        <div class="products-settings-option d-block d-md-flex">
                            <div class="product-cong-left d-flex align-items-center">
                                <ul class="product-view d-flex align-items-center">
                                    <li class="current column-gird"><i class="fa fa-bars fa-rotate-90"></i></li>
                                    <li class="box-gird"><i class="fa fa-th"></i></li>
                                    <li class="list"><i class="fa fa-list-ul"></i></li>
                                </ul>
                                <span class="show-items">Items 1 - 9 of 17</span>
                            </div>

                            <div class="product-sort_by d-flex align-items-center mt-3 mt-md-0">
                                <label for="sort">Sort By:</label>
                                <select name="sort" id="sort">
                                    <option value="Position">Relevance</option>
                                    <option value="Name Ascen">Name, A to Z</option>
                                    <option value="Name Decen">Name, Z to A</option>
                                    <option value="Price Ascen">Price low to heigh</option>
                                    <option value="Price Decen">Price heigh to low</option>
                                </select>
                            </div>
                        </div>

                        <div class="shop-page-products-wrap">
                            <div class="products-wrapper">
                                <div class="row">
                                    <asp:Repeater ID="rptProducts" runat="server" OnItemCommand="rptProducts_ItemCommand">
                                        <ItemTemplate>
                                            <div class="col-lg-4 col-sm-6">
                                                <!-- Single Product Item -->
                                                <div class="single-product-item text-center">
                                                    <figure class="product-thumb">
                                                        <a href="ProductView.aspx?Id=<%#Eval("Id") %>">
                                                            <img src="Images/<%# Eval("Image") %>"
                                                                alt="Products" class="img-fluid"></a>
                                                    </figure>

                                                    <div class="product-details">
                                                        <h2><a href="ProductView.aspx?Id=<%#Eval("Id") %>"><%#Eval("PName") %></a></h2>
                                                        <div class="rating">
                                                         <span><b><%#Eval("rating") %> </b> <i class="fa fa-star"></i></span>

                                                        </div>
                                                        <span class="price">₹ <%#Eval("Price") %></span>
                                                        <p class="products-desc">
                                                            <%# Eval("PDescription") %>
                                                        </p>
                                                        <a href="single-product.html" class="btn btn-add-to-cart">+ Add to Cart</a>

                                                    </div>

                                                    <div class="product-meta">
                                                    </div>

                                                    <span class='product-bedge <%# Eval("Badge").ToString() == "New" ? "" : "sale" %>'>
                                                        <%# Eval("Badge") %>
                                                    </span>
                                                </div>
                                                <!-- Single Product Item -->
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>






                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <!-- Shop Page Content End -->
            </div>
        </div>
    </div>
    <!--== Page Content Wrapper End ==-->
</asp:Content>
