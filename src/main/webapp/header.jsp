<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="entity.ProductCart" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                        aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="http://localhost:8080/beauty-cosmetic-workspace/Home"><img src="images/logo.png" class="logo" width="160px"
                            alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="http://localhost:8080/beauty-cosmetic-workspace/Home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="http://localhost:8080/beauty-cosmetic-workspace/AboutUs">About Us</a></li>
                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                            <ul class="dropdown-menu">
                                <li><a href="http://localhost:8080/beauty-cosmetic-workspace/list">Sidebar Shop</a></li>
                               <!--  <li><a href="http://localhost:8080/beauty-cosmetic-workspace/product-details">Shop</a></li> -->
                                <li><a href="http://localhost:8080/beauty-cosmetic-workspace/cart">Cart</a></li>
                                <li><a href="http://localhost:8080/beauty-cosmetic-workspace/checkout">Checkout</a></li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
                        <li class="nav-item"><a class="nav-link" href="http://localhost:8080/beauty-cosmetic-workspace/ContactUs">Contact Us</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu">
                            <a href="#">
                                <i class="fa fa-shopping-bag"></i>
                                <p>My Cart</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">
							<%
								HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>)request.getAttribute("cart");
								if (cart != null) {
									int total = 0;
								
								for (Map.Entry<Integer, ProductCart> entry: cart.entrySet()) {
									Integer key = entry.getKey();
									ProductCart productCart = entry.getValue();
									total += entry.getValue().getQuantity() * entry.getValue().getProduct().getUnitPrice();
							%>
							<li>
	                            <a href="#" class="photo"><img src="<%= productCart.getProduct().getImageUrl() %>" class="cart-thumb" alt="" /></a>
	                            <h6><a href="#"><%= productCart.getProduct().getName() %></a></h6>
	                            <p>1x - <span class="price"> <%= productCart.getProduct().getUnitPrice() %> </span></p>
	                        </li> 
	                    	 
	                    	
                    	
               
                        <li class="total">
                            <a href="http://localhost:8080/beauty-cosmetic-workspace/cart" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                            <span class="float-right"><strong>Total</strong>: $<%= total %> </span>
                        </li>
                        <% } }%>
                    </ul>
                </li>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->
