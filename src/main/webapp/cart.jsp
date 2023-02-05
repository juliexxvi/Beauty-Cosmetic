<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.HashMap" %>
        <%@ page import="entity.ProductCart" %>
            <%@ page import="java.util.Map" %>
                <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>Insert title here</title>
                        <html lang="en">
                        <!-- Basic -->

                        <head>
                            <meta charset="utf-8">
                            <meta http-equiv="X-UA-Compatible" content="IE=edge">

                            <!-- Mobile Metas -->
                            <meta name="viewport" content="width=device-width, initial-scale=1">

                            <!-- Site Metas -->
                            <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
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
                                                <li><a href="#"><i class="fas fa-location-arrow"></i> Our location</a>
                                                </li>
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
                                        <h2>Cart</h2>
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#">Shop</a></li>
                                            <li class="breadcrumb-item active">Cart</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End All Title Box -->

                        <!-- Start Cart  -->
                        <div class="cart-box-main">
                            <div class="container">
                                <form class="update-box"
                                    action="http://localhost:8080/beauty-cosmetic-workspace/cart/updateQuantity"
                                    method="POST">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="table-main table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Images</th>
                                                            <th>Product Name</th>
                                                            <th>Price</th>
                                                            <th>Quantity</th>
                                                            <th>Total</th>
                                                            <th>Remove</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% HashMap<Integer, ProductCart> cart = (HashMap<Integer,
                                                                ProductCart>)request.getAttribute("cart");
                                                                if (cart != null) {


                                                                for (Map.Entry<Integer, ProductCart> entry:
                                                                    cart.entrySet()) {
                                                                    Integer key = entry.getKey();
                                                                    ProductCart productCart = entry.getValue();
                                                                    %>
                                                                    <tr>
                                                                        <td class="thumbnail-img">
                                                                            <a href="#">
                                                                                <img class="img-fluid"
                                                                                    src="<%= productCart.getProduct().getImageUrl() %>"
                                                                                    alt="" />
                                                                            </a>
                                                                        </td>
                                                                        <td class="name-pr">
                                                                            <h3>
                                                                                <%= productCart.getProduct().getName()
                                                                                    %>
                                                                            </h3>
                                                                        </td>
                                                                        <td class="price-pr">
                                                                            <p>
                                                                                <%= productCart.getProduct().getUnitPrice()
                                                                                    %>
                                                                            </p>
                                                                        </td>
                                                                        <td class="quantity-box"><input type="number"
                                                                                name="product-cart-<%= productCart.getProduct().getId() %>"
                                                                                size="4"
                                                                                value="<%= productCart.getQuantity() %>"
                                                                                min="1" step="1"
                                                                                class="c-input-text qty text"></td>
                                                                        <td class="total-pr">
                                                                            <p>
                                                                                <%= productCart.getQuantity()*productCart.getProduct().getUnitPrice()
                                                                                    %>
                                                                            </p>
                                                                        </td>
                                                                        <td class="remove-pr">
                                                                            <a href="#">
                                                                                <i class="fas fa-times"></i>
                                                                            </a>
                                                                        </td>

                                                                    </tr>
                                                                    <% }} %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row my-5">

                                        <div class="col-lg-12 col-sm-12">
                                            <div class="update-box">

                                                <input value="Update Cart" type="submit">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="row my-5">
                                    <div class="col-lg-8 col-sm-12"></div>
                                    <div class="col-lg-4 col-sm-12">
                                        <div class="order-box">
                                        
                                        	<% int total=0;  %>
                                            <% if (cart !=null) { 
                                            	
                                            	for (Map.Entry<Integer, ProductCart>
                                                entry: cart.entrySet()) {
                                                total += entry.getValue().getQuantity() *
                                                entry.getValue().getProduct().getUnitPrice();
                                                %>
                                                <% }} %>
                                                <h3>Order summary</h3>
                                                <div class="d-flex">
                                                    <h4>Sub Total</h4>
                                                    <div class="ml-auto font-weight-bold"> $ <%= Math.round((total /
                                                            1.095)*100.0)/100.0 %>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <h4>Discount</h4>
                                                    <div class="ml-auto font-weight-bold"> $ 0 </div>
                                                </div>
                                                <hr class="my-1">
                                                <div class="d-flex">
                                                    <h4>Tax</h4>
                                                    <div class="ml-auto font-weight-bold"> $ <%= Math.round((total -
                                                            (total / 1.095))*100.0)/100.0 %>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <h4>Shipping Cost</h4>
                                                    <div class="ml-auto font-weight-bold"> Free </div>
                                                </div>
                                                <hr>
                                                <div class="d-flex gr-total">
                                                    <h5>Grand Total</h5>
                                                    <div class="ml-auto h5"> $ <%= total %>
                                                    </div>
                                                </div>
                                                <hr>
                                                
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex shopping-box"><a
                                            href="http://localhost:8080/beauty-cosmetic-workspace/checkout"
                                            class="ml-auto btn hvr-hover">Checkout</a> </div>
                                </div>

                            </div>
                        </div>
                        <!-- End Cart -->

                        <!-- Start Instagram Feed  -->
                        <div class="instagram-box">
                            <div class="main-instagram owl-carousel owl-theme">
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-01.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-02.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-03.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-04.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-05.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-06.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-07.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-08.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-09.jpg" alt="" />
                                        <div class="hov-in">
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="ins-inner-box">
                                        <img src="images/instagram-img-05.jpg" alt="" />
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
