<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="JewellryShop.AboutUs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-us-content img {
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .team-member {
            margin-bottom: 30px;
        }
        .team-member img {
            border-radius: 50%;
            max-width: 150px;
            border: 5px solid #f1f1f1;
        }
        .team-member h4 {
            margin-top: 15px;
            margin-bottom: 5px;
        }
        .team-member span {
            color: #898989;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--== Page Title Area Start ==-->
    <div id="page-title-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-title-content">
                        <h1>About Us</h1>
                        <ul class="breadcrumb">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="About.aspx" class="active">About</a></li>
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
            <!-- About Us Content Start -->
            <div class="row about-us-content">
                <div class="col-lg-6">
                    <img src="https://placehold.co/600x400/E1C16E/FFFFFF?text=Ruby+Store" alt="About Us" class="img-fluid" />
                </div>
                <div class="col-lg-6">
                    <div class="section-title">
                        <h2>Our Story</h2>
                        <p>A Tradition of Excellence</p>
                    </div>
                    <p>
                        Welcome to Ruby Store, where we believe that every piece of jewelry tells a story. Founded in 1985, our family-owned business has been dedicated to crafting exquisite, timeless pieces that celebrate life's most cherished moments. Our journey began with a passion for artistry and a commitment to quality, values that continue to guide us today.
                    </p>
                    <p>
                        We source the finest gems and precious metals from around the world, ensuring that every creation meets our exacting standards. From classic engagement rings to contemporary custom designs, our master jewelers combine traditional techniques with modern innovation to bring your vision to life.
                    </p>
                </div>
            </div>
            <!-- About Us Content End -->

            <!-- Our Team Area Start -->
            <div class="row mt-5">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Meet Our Team</h2>
                        <p>The Artisans Behind the Art</p>
                    </div>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-lg-4 col-md-6">
                    <div class="team-member">
                        <img src="https://placehold.co/150x150/6c757d/FFFFFF?text=JD" alt="Team Member"/>
                        <h4>Johnathan Doe</h4>
                        <span>Master Jeweler & Founder</span>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-member">
                        <img src="https://placehold.co/150x150/6c757d/FFFFFF?text=JS" alt="Team Member"/>
                        <h4>Jane Smith</h4>
                        <span>Lead Designer</span>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="team-member">
                        <img src="https://placehold.co/150x150/6c757d/FFFFFF?text=EW" alt="Team Member"/>
                        <h4>Emily White</h4>
                        <span>Gemologist & Sales Expert</span>
                    </div>
                </div>
            </div>
            <!-- Our Team Area End -->
        </div>
    </div>
    <!--== Page Content Wrapper End ==-->

    <!--== Testimonial Area Start ==-->
    <section id="testimonial-area">
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
                                        The custom engagement ring they created for me was beyond my wildest dreams. The attention to detail was incredible. Thank you for making our special moment perfect!
                                    </p>
                                    <h3 class="client-name">Luis Manrata</h3>
                                    <span class="client-email">New York, NY</span>
                                </div>

                                <div class="single-testimonial-item">
                                    <p>
                                       An absolutely outstanding experience from start to finish. The team was knowledgeable, patient, and helped me find the perfect anniversary gift. Real support and real quality.
                                    </p>
                                    <h3 class="client-name">John Dibba</h3>
                                    <span class="client-email">Boston, MA</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--== Testimonial Area End ==-->
</asp:Content>

