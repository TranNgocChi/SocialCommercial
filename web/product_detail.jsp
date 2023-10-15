<%-- 
    Document   : product_detail
    Created on : Sep 28, 2023, 11:29:01 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOCO Detail</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->

        <link rel="stylesheet" href="setofshop/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/styleonboarding.css">
        <link rel="stylesheet" href="setofshop/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/style.css" type="text/css">
    </head>
    <body>

        <!-- Header Section Begin -->
        <%@ include file="shop/header_shop.jsp" %>
        <!-- Header Section End -->

        <!-- Hero Section Begin -->
        <section class="hero hero-normal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <%@ include file="shop/hero__categories.jsp" %>
                    </div>
                    <div class="col-lg-9">
                        <%@ include file="shop/hero_search.jsp" %>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->

        <!-- Product Details Section Begin -->
        <h3 style="align-content: center">  ${msg}</h3>
        <section class="product-details spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__pic">
                            <div class="product__details__pic__item">
                                <img class="product__details__pic__item--large"
                                     src="${detail.productImage}" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__text">
                            <h3>${detail.productName}</h3>
                            <div class="product__details__rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <span>(18 reviews)</span>
                            </div>
                            <div class="product__details__price"><fmt:formatNumber value="${detail.productPrice}" type="currency" currencySymbol="" minFractionDigits="0"/> VNĐ</div>
                            <p>${detail.productDescription}</p>
                            
                            <form action="addtocart" method="post" class="primary-btn">
                                <input type="hidden" name="id" value="${id}">
                                <input type="hidden" name="productid" value="${detail.productId}">
                                <input type="hidden" name="productprice" value=""${detail.productPrice}">
                                <input type="hidden" name="productname" value="${detail.productName}">
                               <div class="product__details__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1" name="quantity">
                                    </div>
                                </div>
                            </div>
                         <button type="submit" class="btn btn-primary">ADD TO CART</button>

                            </form>
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <ul>
                                <li><b>Availability</b> <span>In Stock</span></li>
                                <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                                <li><b>Weight</b> <span>0.5 kg</span></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Details Section End -->

        <!-- Related Product Section Begin -->
        <section class="related-product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title related__product__title">
                            <h2>Gợi ý cho bạn</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="related" items="${related}">
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${related.productImage}">
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="detail?pid=${related.productId}">${related.productName}</a></h6>
                                    <h5><fmt:formatNumber value="${related.productPrice}" type="currency" currencySymbol="" minFractionDigits="0"/> VNĐ</h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </section>
        <!-- Related Product Section End -->        



    </body>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="setofshop/js/bootstrap.min.js"></script>
    <script src="setofshop/js/jquery.nice-select.min.js"></script>
    <script src="setofshop/js/jquery-ui.min.js"></script>
    <script src="setofshop/js/jquery.slicknav.js"></script>
    <script src="setofshop/js/mixitup.min.js"></script>
    <script src="setofshop/js/owl.carousel.min.js"></script>
    <script src="setofshop/js/main.js"></script>
    
</html>