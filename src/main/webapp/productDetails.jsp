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
            <title>Beauty Cosmetic</title>
            <meta name="keywords" content="">
            <meta name="description" content="">
            <meta name="author" content="">

            <!-- Site Icons -->
            <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
            <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="css/bootstrap.min.css">
            <!-- Site CSS -->
            <link rel="stylesheet" href="css/style.css">
            <!-- Responsive CSS -->
            <link rel="stylesheet" href="css/responsive.css">
            <!-- Custom CSS -->
            <link rel="stylesheet" href="css/custom.css">
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

            <!-- Start All Title Box -->
            <div class="all-title-box">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Shop Detail</h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Shop</a></li>
                                <li class="breadcrumb-item active">Shop Detail </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End All Title Box -->

            <!-- Start Shop Detail  -->
            <div class="shop-detail-box-main">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-5 col-md-6">
                            <div id="carousel-example-1" class="single-product-slider carousel slide"
                                data-ride="carousel">
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active"> <img class="d-block w-100"
                                            src="<c:out value='${productDetails.imageUrl}'/>" alt="First slide"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-7 col-md-6">
                            <div class="single-product-details">
                                <h2>
                                    <c:out value='${productDetails.name}' />
                                </h2>
                                <h5> <del>$ 50.00</del>
                                    <c:out value='${productDetails.unitPrice}' />
                                </h5>
                                <p class="available-stock"><span> More than 20 available / <a href="#">8 sold
                                        </a></span>
                                <p>
                                <h4>Short Description:</h4>
                                <p>
                                    <c:out value='${productDetails.description}' />
                                </p>

                                <div class="add-to-btn">
                                    <div class="add-comp">
                                        <a class="btn hvr-hover" href="#"><i class="fas fa-heart"></i> Add to
                                            wishlist</a>
                                    </div>
                                    <div class="share-bar">
                                        <a class="btn hvr-hover" href="#"><i class="fab fa-facebook"
                                                aria-hidden="true"></i></a>
                                        <a class="btn hvr-hover" href="#"><i class="fab fa-google-plus"
                                                aria-hidden="true"></i></a>
                                        <a class="btn hvr-hover" href="#"><i class="fab fa-twitter"
                                                aria-hidden="true"></i></a>
                                        <a class="btn hvr-hover" href="#"><i class="fab fa-pinterest-p"
                                                aria-hidden="true"></i></a>
                                        <a class="btn hvr-hover" href="#"><i class="fab fa-whatsapp"
                                                aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row my-5">
                        <div class="card card-outline-secondary my-4">
                            <div class="card-header">
                                <h2>Product Reviews</h2>
                            </div>
                            <div class="card-body">
                                <div class="media mb-3">
                                    <div class="mr-2">
                                        <img class="rounded-circle border p-1" src=images/donald.jpg
                                            alt="Generic placeholder image" style="width:64px;height:64px;">
                                    </div>
                                    <div class="media-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim
                                            aperiam inventore, similique necessitatibus neque non! Doloribus, modi
                                            sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus
                                            quae sint natus.</p>
                                        <small class="text-muted">Posted by Anonymous on 3/1/18</small>
                                    </div>
                                </div>
                                <hr>
                                <div class="media mb-3">
                                    <div class="mr-2">
                                        <img class="rounded-circle border p-1" src=images/emma.jpg
                                            alt="Generic placeholder image" style="width:64px;height:64px;">
                                    </div>
                                    <div class="media-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim
                                            aperiam inventore, similique necessitatibus neque non! Doloribus, modi
                                            sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus
                                            quae sint natus.</p>
                                        <small class="text-muted">Posted by Anonymous on 3/1/18</small>
                                    </div>
                                </div>
                                <hr>
                                <div class="media mb-3">
                                    <div class="mr-2">
                                        <img class="rounded-circle border p-1" src=images/male.jpg
                                            alt="Generic placeholder image" style="width:64px;height:64px;">
                                    </div>
                                    <div class="media-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim
                                            aperiam inventore, similique necessitatibus neque non! Doloribus, modi
                                            sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus
                                            quae sint natus.</p>
                                        <small class="text-muted">Posted by Anonymous on 3/1/18</small>
                                    </div>
                                </div>
                                <hr>
                                <a href="#" class="btn hvr-hover">Leave a Review</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- End Cart -->

            <!-- Start Instagram Feed  -->
            <div class="instagram-box">
                <div class="main-instagram owl-carousel owl-theme">
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/banner4.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/banner5.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/product6.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/p2.jpg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/product11.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/product13.jpg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/banner2.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/product15.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/img-pro-04.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ins-inner-box">
                            <img src="images/categories_img_01.jpeg" alt="" width="290" height="300" />
                            <div class="hov-in">
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Instagram Feed  -->


            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>
