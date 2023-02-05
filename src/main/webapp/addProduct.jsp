<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

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

            <div class="all-title-box">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Add a new product</h2>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row" style="justify-content: center; padding-top: 20px;">



                <form action="insert" method="post">

                    <label for="fname">Product name</label>
                    <input type="text" id="productName" name="productName"><br>
                    <label for="imageUrl">Image URL</label>
                    <input type="text" id="imageUrl" name="imageUrl"><br>
                    <label for="packageSize">Package Size</label>
                    <input type="text" id="packageSize" name="packageSize"><br>
                    <label for="description">Description</label>
                    <input type="text" id="description" name="description"><br>
                    <label for="unitPrice">Unit Price</label>
                    <input type="text" id="unitPrice" name="unitPrice"><br>
                    <label for="lotNumber">LOT Number</label>
                    <input type="text" id="lotNumber" name="lotNumber"><br>

                    <label>Category:</label>
                    <select id="category" name="category">
                        <c:forEach var="category" items="${category}">
                            <option id="<c:out value=" ${category.id}" />" value="
                            <c:out value="${category.id}" />">
                            <c:out value="${category.name}" />
                            </option>
                        </c:forEach>
                    </select>
                    <br>
                    <label>Brand:</label>
                    <select id="brand" name="brand">
                        <c:forEach var="brand" items="${brand}">
                            <option id="<c:out value=" ${brand.id}" />" value="
                            <c:out value="${brand.id}" />">
                            <c:out value="${brand.name}" />
                            </option>
                        </c:forEach>
                    </select>
                    <br>
                    <br>
                    <input class="ml-auto btn hvr-hover" type="submit" value="Submit">
                </form>
            </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>
