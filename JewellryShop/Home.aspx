<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JewellryShop.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--== Banner // Slider Area Start ==-->
    <section id="banner-area" class="banner__2">
      <div class="ruby-container">
        <div class="row">
          <div class="col-lg-12">
            <div id="banner-carousel" class="owl-carousel">
              <!-- Banner Single Carousel Start -->
              <div class="single-carousel-wrap home_6_slide_1">
                <div class="banner-caption text-center text-lg-left">
                  <h4>Rubby Store</h4>
                  <h2>
                    Ring Solitaire <br />
                    for Princess
                  </h2>
                  <p>
                    Eodem modo typi, qui nunc nobis videntur parum clari, fiant
                    sollemnes in futurum.
                  </p>
                  <a href="#" class="btn-long-arrow">Learn More</a>
                </div>
              </div>
              <!-- Banner Single Carousel End -->

              <!-- Banner Single Carousel Start -->
              <div class="single-carousel-wrap home_6_slide_2">
                <div class="banner-caption text-center text-lg-left">
                  <h4>New Collection 2017</h4>
                  <h2>
                    Nice Earrings <br />
                    Collection
                  </h2>
                  <p>
                    Eodem modo typi, qui nunc nobis videntur parum clari, fiant
                    sollemnes in futurum.
                  </p>
                  <a href="#" class="btn-long-arrow">Learn More</a>
                </div>
              </div>
              <!-- Banner Single Carousel End -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== Banner Slider End ==-->
 

      <!--== Featured Products Area Start ==-->
    <div id="category-feature-product" class="pt-9">
      <div class="ruby-container">
        <div class="row">
          <div class="col-lg-6">
            <div class="row">
              <div class="col-lg-12">
                <div class="single-featured-product">
                  <a href="#"
                    ><img
                      src="assets/img/home_6_cat_1.jpg"
                      alt="Products"
                      class="img-fluid"
                  /></a>
                </div>
              </div>

              <div class="col-lg-12">
                <div class="single-featured-product">
                  <a href="#"
                    ><img
                      src="assets/img/home_6_cat_2.jpg"
                      alt="Products"
                      class="img-fluid"
                  /></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="row">
              <div class="col-lg-12">
                <div class="single-featured-product">
                  <a href="#"
                    ><img
                      src="assets/img/home_6_cat_3.jpg"
                      alt="Products"
                      class="img-fluid"
                  /></a>
                </div>
              </div>

              <div class="col-lg-12">
                <div class="single-featured-product">
                  <a href="#"
                    ><img
                      src="assets/img/home_6_cat_4.jpg"
                      alt="Products"
                      class="img-fluid"
                  /></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== Featured Products Area End ==-->

    <!--== New Products Area Start ==-->
    <section id="new-products-area" class="p-9">
      <div class="ruby-container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <!-- Section Title Start -->
            <div class="section-title">
              <h2>New Products</h2>
              <p>Trending stunning Unique</p>
            </div>
            <!-- Section Title End -->
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12">
            <div class="products-wrapper">
              <div class="new-products-carousel owl-carousel">
                <!-- Single Product Item -->
                <div class="single-product-item text-center">
                  <figure class="product-thumb">
                    <a href="single-product.html"
                      ><img
                        src="assets/img/new-product-1.jpg"
                        alt="Products"
                        class="img-fluid"
                    /></a>
                  </figure>

                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <span class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </span>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                    <span class="product-bedge">New</span>
                  </div>

                  <div class="product-meta">
                    <button
                      type="button"
                      data-toggle="modal"
                      data-target="#quickView"
                    >
                      <span
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Quick View"
                        ><i class="fa fa-compress"></i
                      ></span>
                    </button>
                    <a
                      href="wishlist.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Add to Wishlist"
                      ><i class="fa fa-heart-o"></i
                    ></a>
                    <a
                      href="compare.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Compare"
                      ><i class="fa fa-tags"></i
                    ></a>
                  </div>
                </div>
                <!-- Single Product Item -->

                <!-- Single Product Item -->
                <div class="single-product-item text-center">
                  <figure class="product-thumb">
                    <a href="single-product.html"
                      ><img
                        src="assets/img/new-product-2.jpg"
                        alt="Products"
                        class="img-fluid"
                    /></a>
                  </figure>

                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Bruno Compete Hoodie</a>
                    </h2>
                    <span class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </span>
                    <span class="price">$152.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                    <span class="product-bedge">New</span>
                  </div>

                  <div class="product-meta">
                    <button
                      type="button"
                      data-toggle="modal"
                      data-target="#quickView"
                    >
                      <span
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Quick View"
                        ><i class="fa fa-compress"></i
                      ></span>
                    </button>
                    <a
                      href="wishlist.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Add to Wishlist"
                      ><i class="fa fa-heart-o"></i
                    ></a>
                    <a
                      href="compare.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Compare"
                      ><i class="fa fa-tags"></i
                    ></a>
                  </div>
                </div>
                <!-- Single Product Item -->

                <!-- Single Product Item -->
                <div class="single-product-item text-center">
                  <figure class="product-thumb">
                    <a href="single-product.html"
                      ><img
                        src="assets/img/new-product-3.jpg"
                        alt="Products"
                        class="img-fluid"
                    /></a>
                  </figure>

                  <div class="product-details">
                    <h2><a href="single-product.html">MH01-Black</a></h2>
                    <span class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </span>
                    <span class="price">$43.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                    <span class="product-bedge">New</span>
                  </div>

                  <div class="product-meta">
                    <button
                      type="button"
                      data-toggle="modal"
                      data-target="#quickView"
                    >
                      <span
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Quick View"
                        ><i class="fa fa-compress"></i
                      ></span>
                    </button>
                    <a
                      href="wishlist.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Add to Wishlist"
                      ><i class="fa fa-heart-o"></i
                    ></a>
                    <a
                      href="compare.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Compare"
                      ><i class="fa fa-tags"></i
                    ></a>
                  </div>
                </div>
                <!-- Single Product Item -->

                <!-- Single Product Item -->
                <div class="single-product-item text-center">
                  <figure class="product-thumb">
                    <a href="single-product.html"
                      ><img
                        src="assets/img/new-product-4.jpg"
                        alt="Products"
                        class="img-fluid"
                    /></a>
                  </figure>

                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Chaz Kangeroo Hoodie</a>
                    </h2>
                    <span class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                    </span>
                    <span class="price">$83.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                    <span class="product-bedge sale">Sale</span>
                  </div>

                  <div class="product-meta">
                    <button
                      type="button"
                      data-toggle="modal"
                      data-target="#quickView"
                    >
                      <span
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Quick View"
                        ><i class="fa fa-compress"></i
                      ></span>
                    </button>
                    <a
                      href="wishlist.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Add to Wishlist"
                      ><i class="fa fa-heart-o"></i
                    ></a>
                    <a
                      href="compare.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Compare"
                      ><i class="fa fa-tags"></i
                    ></a>
                  </div>
                </div>
                <!-- Single Product Item -->

                <!-- Single Product Item -->
                <div class="single-product-item text-center">
                  <figure class="product-thumb">
                    <a href="single-product.html"
                      ><img
                        src="assets/img/new-product-4.jpg"
                        alt="Products"
                        class="img-fluid"
                    /></a>
                  </figure>

                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Chaz Kangeroo Hoodie</a>
                    </h2>
                    <span class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                    </span>
                    <span class="price">$83.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                    <span class="product-bedge sale">Sale</span>
                  </div>

                  <div class="product-meta">
                    <button
                      type="button"
                      data-toggle="modal"
                      data-target="#quickView"
                    >
                      <span
                        data-toggle="tooltip"
                        data-placement="left"
                        title="Quick View"
                        ><i class="fa fa-compress"></i
                      ></span>
                    </button>
                    <a
                      href="wishlist.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Add to Wishlist"
                      ><i class="fa fa-heart-o"></i
                    ></a>
                    <a
                      href="compare.html"
                      data-toggle="tooltip"
                      data-placement="left"
                      title="Compare"
                      ><i class="fa fa-tags"></i
                    ></a>
                  </div>
                </div>
                <!-- Single Product Item -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== New Products Area End ==-->

    <!--== Categories Products Area Start ==-->
    <div id="products-area-wrapper" class="mt-0">
      <div class="ruby-container">
        <div class="row no-gutters">
          <div class="col-md-7">
            <a href="#" class="product-category-name-warp d-flex">
              <div class="category-title-box d-flex">
                <h2 class="pro-cate-title">Men</h2>
              </div>
            </a>
          </div>

          <div class="col-md-5">
            <div class="products-wrapper text-center">
              <div class="products-categories-carousel owl-carousel">
                <div class="single-product-item">
                  <figure class="product-thumb">
                    <a href="#"
                      ><img
                        src="assets/img/product-1.jpg"
                        alt="Product"
                        class="img-fluid"
                    /></a>
                  </figure>
                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                  </div>
                </div>

                <div class="single-product-item">
                  <figure class="product-thumb">
                    <a href="#"
                      ><img
                        src="assets/img/product-2.jpg"
                        alt="Product"
                        class="img-fluid"
                    /></a>
                  </figure>
                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                  </div>
                </div>

                <div class="single-product-item">
                  <figure class="product-thumb">
                    <a href="#"
                      ><img
                        src="assets/img/product-3.jpg"
                        alt="Product"
                        class="img-fluid"
                    /></a>
                  </figure>
                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row no-gutters">
          <div class="col-md-5">
            <div class="products-wrapper text-center">
              <div class="products-categories-carousel owl-carousel">
                <div class="single-product-item">
                  <figure class="product-thumb">
                    <a href="#"
                      ><img
                        src="assets/img/product-1.jpg"
                        alt="Product"
                        class="img-fluid"
                    /></a>
                  </figure>
                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                  </div>
                </div>

                <div class="single-product-item">
                  <figure class="product-thumb">
                    <a href="#"
                      ><img
                        src="assets/img/product-2.jpg"
                        alt="Product"
                        class="img-fluid"
                    /></a>
                  </figure>
                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                  </div>
                </div>

                <div class="single-product-item">
                  <figure class="product-thumb">
                    <a href="#"
                      ><img
                        src="assets/img/product-3.jpg"
                        alt="Product"
                        class="img-fluid"
                    /></a>
                  </figure>
                  <div class="product-details">
                    <h2>
                      <a href="single-product.html">Crown Summit Backpack</a>
                    </h2>
                    <div class="rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half"></i>
                      <i class="fa fa-star-o"></i>
                    </div>
                    <span class="price">$52.00</span>
                    <a href="single-product.html" class="btn btn-add-to-cart"
                      >+ Add to Cart</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-7 order-first order-md-last">
            <a href="#" class="product-category-name-warp women d-flex">
              <div class="category-title-box d-flex">
                <h2 class="pro-cate-title">Women</h2>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!--== Categories Products Area End ==-->

    <!--== Testimonial Area Start ==-->
    <section id="testimonial-area" class="mt-9">
      <div class="ruby-container">
        <div class="testimonial-wrapper">
          <div class="row">
            <div class="col-lg-12 text-center">
              <!-- Section Title Start -->
              <div class="section-title">
                <h2>What People Say</h2>
                <p>Testimonials</p>
              </div>
              <!-- Section Title End -->
            </div>
          </div>

          <div class="row">
            <div class="col-lg-7 m-auto text-center">
              <div class="testimonial-content-wrap">
                <div id="testimonialCarousel" class="owl-carousel">
                  <div class="single-testimonial-item">
                    <p>
                      These guys have been absolutely outstanding. When I needed
                      them they came through in a big way! I know that if you
                      buy this theme, you'll get the one thing we all look for
                      when we buy on Themeforest, and that's real support for
                      the craziest of requests!
                    </p>

                    <h3 class="client-name">Luis Manrata</h3>
                    <span class="client-email">you@email.here</span>
                  </div>

                  <div class="single-testimonial-item">
                    <p>
                      These guys have been absolutely outstanding. When I needed
                      them they came through in a big way! I know that if you
                      buy this theme, you'll get the one thing we all look for
                      when we buy on Themeforest, and that's real support for
                      the craziest of requests!
                    </p>

                    <h3 class="client-name">John Dibba</h3>
                    <span class="client-email">you@email.here</span>
                  </div>

                  <div class="single-testimonial-item">
                    <p>
                      These guys have been absolutely outstanding. When I needed
                      them they came through in a big way! I know that if you
                      buy this theme, you'll get the one thing we all look for
                      when we buy on Themeforest, and that's real support for
                      the craziest of requests!
                    </p>

                    <h3 class="client-name">Alex Tuntuni</h3>
                    <span class="client-email">you@email.here</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== Testimonial Area End ==-->

    <!--== Newsletter Area Start ==-->
    <section id="newsletter-area" class="p-9">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <!-- Section Title Start -->
            <div class="section-title">
              <h2>Join The Newsletter</h2>
              <p>Sign Up for Our Newsletter</p>
            </div>
            <!-- Section Title End -->
          </div>
        </div>

        <div class="row">
          <div class="col-lg-8 m-auto">
            <div class="newsletter-form-wrap">
        
                id="subscribe-form"
                action="https://d29u17ylf1ylz9.cloudfront.net/ruby-v2/ruby/assets/php/subscribe.php"
                method="post"
              >
                <input
                  id="subscribe"
                  type="email"
                  name="email"
                  placeholder="Enter your Email  Here"
                />
                <button type="submit" class="btn-long-arrow">Subscribe</button>
                <div id="result"></div>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== Newsletter Area End ==-->

</asp:Content>

