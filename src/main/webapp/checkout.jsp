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
                            <h2>Checkout</h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Shop</a></li>
                                <li class="breadcrumb-item active">Checkout</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End All Title Box -->

            <!-- Start Cart  -->
            <div class="cart-box-main">

                <div class="container">
                    <div class="row new-account-login">
                        <div class="col-sm-6 col-lg-6 mb-3">
                            <div class="title-left">
                                <h3>Account Login</h3>
                            </div>
                            <h5><a data-toggle="collapse" href="#formLogin" role="button" aria-expanded="false">Click
                                    here to
                                    Login</a></h5>

                            <form class="mt-3 collapse review-form-box" id="formLogin">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="InputEmail" class="mb-0">Email Address</label>
                                        <input type="email" class="form-control" id="InputEmail"
                                            placeholder="Enter Email">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="InputPassword" class="mb-0">Password</label>
                                        <input type="password" class="form-control" id="InputPassword"
                                            placeholder="Password">
                                    </div>
                                </div>
                                <button type="submit" class="btn hvr-hover">Login</button>
                            </form>
                        </div>
                        <div class="col-sm-6 col-lg-6 mb-3">
                            <div class="title-left">
                                <h3>Create New Account</h3>
                            </div>
                            <h5><a data-toggle="collapse" href="#formRegister" role="button" aria-expanded="false">Click
                                    here to
                                    Register</a></h5>
                            <form class="mt-3 collapse review-form-box" id="formRegister">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="InputName" class="mb-0">First Name</label>
                                        <input type="text" class="form-control" id="InputName" placeholder="First Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="InputLastname" class="mb-0">Last Name</label>
                                        <input type="text" class="form-control" id="InputLastname"
                                            placeholder="Last Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="InputEmail1" class="mb-0">Email Address</label>
                                        <input type="email" class="form-control" id="InputEmail1"
                                            placeholder="Enter Email">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="InputPassword1" class="mb-0">Password</label>
                                        <input type="password" class="form-control" id="InputPassword1"
                                            placeholder="Password">
                                    </div>
                                </div>
                                <button type="submit" class="btn hvr-hover">Register</button>
                            </form>
                        </div>
                    </div>
                    <form action="/beauty-cosmetic-workspace/checkout/confirm-checkout" method="POST">
                        <div class="row">
                            <div class="col-sm-6 col-lg-6 mb-3">
                                <div class="checkout-address">
                                    <div class="title-left">
                                        <h3>Billing address</h3>
                                    </div>
                                    <form class="needs-validation" novalidate ">
                            <div class=" row">
                                        <div class="col-md-6 mb-3">
                                            <label for="firstName">First name *</label>
                                            <input type="text" class="form-control" name="firstname" id="firstName"
                                                placeholder="" value="" required>
                                            <div class="invalid-feedback"> Valid first name is required. </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="lastName">Last name *</label>
                                            <input type="text" class="form-control" name="lastname" id="lastName"
                                                placeholder="" value="" required>
                                            <div class="invalid-feedback"> Valid last name is required. </div>
                                        </div>
                                </div>
                                <div class="mb-3">
                                    <label for="username">Username</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="username" id="username"
                                            placeholder="" required>
                                        <div class="invalid-feedback" style="width: 100%;"> Your username is required.
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email">Email Address *</label>
                                    <input type="email" class="form-control" name="emailAddress" id="email"
                                        placeholder="">
                                    <div class="invalid-feedback"> Please enter a valid email address for shipping
                                        updates.
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address">Address *</label>
                                    <input type="text" class="form-control" name="address" id="address" placeholder=""
                                        required>
                                    <div class="invalid-feedback"> Please enter your shipping address. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address2">Address 2 </label>
                                    <input type="text" class="form-control" id="address2" placeholder="">
                                </div>
                                <div class="row">
                                    <div class="col-md-5 mb-3">
                                        <label for="country">Country </label>
                                        <select class="wide w-100" id="country">
                                            <option value="Choose..." data-display="Select">Choose...</option>
                                            <option value="Australia">Australia</option>
                                        </select>
                                        <div class="invalid-feedback"> Please select a valid country. </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="state">State </label>
                                        <select class="wide w-100" id="state">
                                            <option data-display="Select">Choose...</option>
                                            <option>NSW</option>
                                            <option>VIC</option>
                                            <option>QLD</option>
                                            <option>WA</option>
                                            <option>TAS</option>
                                        </select>
                                        <div class="invalid-feedback"> Please provide a valid state. </div>
                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <label for="zip">Zip </label>
                                        <input type="text" class="form-control" id="zip" placeholder="" required>
                                        <div class="invalid-feedback"> Zip code required. </div>
                                    </div>
                                </div>
                                <hr class="mb-4">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="same-address">
                                    <label class="custom-control-label" for="same-address">Shipping address is the same
                                        as
                                        my billing address</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="save-info">
                                    <label class="custom-control-label" for="save-info">Save this information for next
                                        time</label>
                                </div>
                                <!-- <hr class="mb-4"> -->
                                <!-- <div class="title"> <span>Payment</span> </div>
                            <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                    <input id="credit" name="paymentMethod" type="radio" class="custom-control-input"
                                        checked required>
                                    <label class="custom-control-label" for="credit">Credit card</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="debit" name="paymentMethod" type="radio" class="custom-control-input"
                                        required>
                                    <label class="custom-control-label" for="debit">Debit card</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input"
                                        required>
                                    <label class="custom-control-label" for="paypal">Paypal</label>
                                </div>
                            </div> -->
                                <!-- <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="cc-name">Name on card</label>
                                    <input type="text" class="form-control" id="cc-name" placeholder="" required> <small
                                        class="text-muted">Full name as displayed on card</small>
                                    <div class="invalid-feedback"> Name on card is required </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="cc-number">Credit card number</label>
                                    <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                    <div class="invalid-feedback"> Credit card number is required </div>
                                </div>
                            </div> -->
                                <!--  <div class="row">
                                <div class="col-md-3 mb-3">
                                    <label for="cc-expiration">Expiration</label>
                                    <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                    <div class="invalid-feedback"> Expiration date required </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="cc-expiration">CVV</label>
                                    <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                    <div class="invalid-feedback"> Security code required </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <div class="payment-icon">
                                        <ul>
                                            <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                                        </ul>
                                    </div>
                                </div>
                            </div> -->
                                <hr class="mb-1">
                    </form>
                </div>

            </div>
            <div class="col-sm-6 col-lg-6 mb-3">

                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="shipping-method-box">
                            <div class="title-left">
                                <h3>Shipping Method</h3>
                            </div>
                            <div class="mb-4">
                                <div class="custom-control custom-radio">
                                    <input id="shippingOption1" name="shipping-option" class="custom-control-input"
                                        checked="checked" type="radio">
                                    <label class="custom-control-label" for="shippingOption1">Standard
                                        Delivery</label> <span class="float-right font-weight-bold">FREE</span>
                                </div>
                                <div class="ml-4 mb-2 small">(3-7 business days)</div>
                                <div class="custom-control custom-radio">
                                    <input id="shippingOption2" name="shipping-option" class="custom-control-input"
                                        type="radio">
                                    <label class="custom-control-label" for="shippingOption2">Express
                                        Delivery</label> <span class="float-right font-weight-bold">$10.00</span>
                                </div>
                                <div class="ml-4 mb-2 small">(2-4 business days)</div>
                                <div class="custom-control custom-radio">
                                    <input id="shippingOption3" name="shipping-option" class="custom-control-input"
                                        type="radio">
                                    <label class="custom-control-label" for="shippingOption3">Next Business
                                        day</label> <span class="float-right font-weight-bold">$20.00</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 d-flex shopping-box"> <button class="ml-auto btn hvr-hover">Place Order</button>
                    </div>
                </div>
            </div>
            </div>
            </form>
            </div>
            </div>
            <!-- End Cart -->

            <jsp:include page="footer.jsp"></jsp:include>

        </body>

        </html>
