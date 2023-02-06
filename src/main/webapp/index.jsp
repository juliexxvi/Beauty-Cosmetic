<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <!DOCTYPE html>
        <html lang="en">
        <!-- Basic -->

        <head>

            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">

            <!-- Mobile Metas -->
            <meta name="viewport" content="width=device-width, initial-scale=1">

            <!-- Site Metas -->
            <title>Beauty Cosmetic - Ecommerce Bootstrap 4 HTML Template</title>
            <meta name="keywords" content="">
            <meta name="description" content="">
            <meta name="author" content="">

            <!-- Site Icons -->
            <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
            <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="./css/bootstrap.min.css">
            <!-- Site CSS -->
            <link rel="stylesheet" href="./css/style.css">
            <!-- Responsive CSS -->
            <link rel="stylesheet" href="./css/responsive.css">
            <!-- Custom CSS -->
            <link rel="stylesheet" href="./css/custom.css">
            <link rel="stylesheet" href="css/all.css">

        </head>

        <body>
            <!-- Start Main Top -->
            <div class="main-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="our-link">
                                <ul>
                                    <li><a href="#"><i class="fa fa-user s_color"></i> My Account</a></li>
                                    <li><a href="#"><i class="fas fa-location-arrow"></i> Our location</a></li>
                                    <li><a href="#"><i class="fas fa-headset"></i> Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="login-box">
                                <select id="basic" class="selectpicker show-tick form-control"
                                    data-placeholder="Sign In">
                                    <option>Register Here</option>
                                    <option>Sign In</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Main Top -->

            <jsp:include page="header.jsp"></jsp:include>

            <!-- Start Top Search -->
            <div class="top-search">
                <div class="container">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                    </div>
                </div>
            </div>
            <!-- End Top Search -->

            <!-- Start Slider -->
            <div id="slides-shop" class="cover-slides">
                <ul class="slides-container">
                    <li class="text-center">
                        <img src="images/banner-01.jpeg" alt="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="m-b-20"><strong>Welcome To <br> Beauty Cosmetic</strong></h1>
                                    <p class="m-b-40">Take your skincare routine to the next level with Beauty Cosmetic.
                                        <br>
                                        The clean and pure ingredients help plump skin.</p>
                                    <p><a class="btn hvr-hover" href="#">Shop Now</a></p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="text-center">
                        <img src="images/banner-02.jpeg" alt="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="m-b-20"><strong>Welcome To <br> Beauty Cosmetic</strong></h1>
                                    <p class="m-b-40">These ingestibles helped me see better beauty days <br> filled
                                        with
                                        confidence and allure because they work.</p>
                                    <p><a class="btn hvr-hover" href="#">Shop Now</a></p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="text-center">
                        <img src="images/banner-03.jpeg" alt="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="m-b-20"><strong>Welcome To <br> Beauty Cosmetic</strong></h1>
                                    <p class="m-b-40">The best beauty supplements backed by <br> research and packed
                                        with
                                        glow-giving goodness.</p>
                                    <p><a class="btn hvr-hover" href="#">Shop Now</a></p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="slides-navigation">
                    <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
                </div>
            </div>
            <!-- End Slider -->

            <!-- Start Categories  -->
            <div class="categories-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="shop-cat-box">
                                <img class="img-fluid" src="images/categories_img_01.jpeg" alt="" />
                                <a class="btn hvr-hover" href="#">Skincare</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="shop-cat-box">
                                <img class="img-fluid" src="images/categories_img_02.jpeg" alt="" />
                                <a class="btn hvr-hover" href="#">Body</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <div class="shop-cat-box">
                                <img class="img-fluid" src="images/categories_img_03.jpeg" alt="" />
                                <a class="btn hvr-hover" href="#">Haircare</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Categories -->

            <!-- Start Products  -->
            <div class="products-box">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="title-all text-center">
                                <h1>Beauty Lover</h1>
                                <p>Select The Best For Your Skin</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="special-menu text-center">
                                <div class="button-group filter-button-group">
                                    <button class="active" data-filter="*">All</button>
                                    <button data-filter=".top-featured">Top featured</button>
                                    <button data-filter=".best-seller">Best seller</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row special-list">
                        <c:forEach var="topProduct" items="${topProducts}">
                            <div class="col-lg-3 col-md-6 special-grid best-seller">
                                <div class="products-single fix">
                                    <div class="box-img-hover">
                                        <div class="type-lb">
                                            <p class="new">New</p>
                                        </div>
                                        <img src="${ topProduct.imageUrl}" class="img-fluid" alt="Image">
                                        <div class="mask-icon">
                                            <ul>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right"
                                                        title="View"><i class="fas fa-eye"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right"
                                                        title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                <li><a href="#" data-toggle="tooltip" data-placement="right"
                                                        title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                            </ul>
                                            <a class="cart" href="#">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="why-text">
                                        <h4>${topProduct.name }</h4>
                                        <h5> ${topProduct.unitPrice}</h5>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- End Products  -->

            <!-- Start Blog  -->
            <div class="latest-blog">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="title-all text-center">
                                <h1>Latest Blog</h1>
                                <p>ALWAYS BE GENTLE WITH YOUR SKIN</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4 col-xl-4">
                            <div class="blog-box">
                                <div class="blog-img">
                                    <img class="img-fluid" src="images/blog-img.jpeg" alt="" />
                                </div>
                                <div class="blog-content">
                                    <div class="title-blog">
                                        <h3>6 ways to brighten your dull skin</h3>
                                        <p>Fed up with looking at your tired, dull skin in the mirror every morning?
                                            Miss that
                                            radiant complexion you once had and wonder if it’s possible you’ll ever get
                                            it back?
                                            Well, you can wonder no more as the answer is yes, and we are here to tell
                                            you how!
                                            Keep reading as we give you the lowdown on why your complexion is looking so
                                            lacklustre and 5 ways you can brighten skin naturally!</p>
                                    </div>
                                    <ul class="option-blog">
                                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#"><i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-4">
                            <div class="blog-box">
                                <div class="blog-img">
                                    <img class="img-fluid" src="images/blog-img-01.jpeg" alt="" />
                                </div>
                                <div class="blog-content">
                                    <div class="title-blog">
                                        <h3>A complete guide on where and how to apply blush correctly</h3>
                                        <p>I’m personally a huge lover of blush and wear mine daily all year round. It’s
                                            the
                                            perfect go-to when you’re after a minimal makeup look that’s quick and easy
                                            to
                                            apply. It also works in perfect unison with bronzer when you want to contour
                                            your
                                            face or simply create a healthy sun kissed glow. The problem is with the
                                            many
                                            conflicting tutorials out there, where, and how do you actually apply it?
                                            Well, we
                                            turned to the experts at Beauty Collective for the low-down. Keep reading
                                            for our
                                            complete guide on all things blush! ….
                                        </p>
                                    </div>
                                    <ul class="option-blog">
                                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#"><i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 col-xl-4">
                            <div class="blog-box">
                                <div class="blog-img">
                                    <img class="img-fluid" src="images/blog-img-02.jpeg" alt="" />
                                </div>
                                <div class="blog-content">
                                    <div class="title-blog">
                                        <h3>7 benefits of exfoliation and which exfoliant is best for your skin</h3>
                                        <p>While daily cleansing and moisturising is essential for your skin,
                                            exfoliating is
                                            another step in your skin care routine that you’ll not want to miss! And no,
                                            it’s
                                            not recommended you exfoliate every day, and how often you do, it totally
                                            depends on
                                            your skin’s specific needs, but there is no doubt how important exfoliating
                                            is for
                                            everyone, even those with sensitive skin. Read on as we talk all things
                                            exfoliation,
                                            including the many benefits and the best exfoliators to use.</p>
                                    </div>
                                    <ul class="option-blog">
                                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                        <li><a href="#"><i class="far fa-comments"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Blog  -->

            <jsp:include page="footer.jsp"></jsp:include>


        </body>

        </html>
