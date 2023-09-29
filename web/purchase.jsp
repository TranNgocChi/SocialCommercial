<%-- 
    Document   : purchase
    Created on : Sep 28, 2023, 3:58:35 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->

        <link rel="stylesheet" href="setofshop/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="setofshop/css/style.css" type="text/css">

        <title>SOCO - Đơn mua</title>
    </head>
    <body>
        <!-- Header Section Begin -->
        <%@ include file="shop/header_shop.jsp" %>
        <!-- Header Section End -->

        <!-- Hero Section Begin -->
        <%@ include file="shop/hero_section.jsp" %>
        <!-- Hero Section End -->

        <!-- Featured Section Begin -->
        <section class="featured spad" style="padding-top: 20px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Đơn mua</h2>
                        </div>
                        <div class="featured__controls">
                            <ul>
                                <li class="active">Chờ thanh toán</li>
                                <li>Chờ vận chuyển</li>
                                <li>Đang giao</li>
                                <li>Hoàn thành</li>
                                <li>Đã huỷ</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Shoping Cart Section Begin -->
                <section class="shoping-cart spad" style="padding-top: 0;">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="shoping__cart__table">
                                    <table>
                                        <tbody>
                                            <tr>

                                                <th class="shoping__product" colspan="5" style="text-align: left; padding-top: 10px">
                                                    Shop: ABC
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="shoping__cart__item">
                                                    <img src="setofshop/img/cart/cart-1.jpg" alt="">
                                                    <h5>Vegetable’s Package</h5>
                                                </td>
                                                <td class="shoping__cart__price">
                                                    $55.00
                                                </td>
                                                <td class="shoping__cart__quantity">
                                                    <div class="quantity">
                                                        <div class="pro-qty">
                                                            <input type="text" value="2">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="shoping__cart__total">
                                                    $110.00
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="shoping__cart__item">
                                                    <img src="setofshop/img/cart/cart-2.jpg" alt="">
                                                    <h5>Fresh Garden Vegetable</h5>
                                                </td>
                                                <td class="shoping__cart__price">
                                                    $39.00
                                                </td>
                                                <td class="shoping__cart__quantity">
                                                    <div class="quantity">
                                                        <div class="pro-qty">
                                                            <input type="text" value="1">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="shoping__cart__total">
                                                    $39.99
                                                </td>
                                            </tr>
                                            <tr>

                                                <th class="shoping__product" colspan="5" style="text-align: left; padding-top: 10px">
                                                    Shop: ABC
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="shoping__cart__item">
                                                    <img src="setofshop/img/cart/cart-1.jpg" alt="">
                                                    <h5>Vegetable’s Package</h5>
                                                </td>
                                                <td class="shoping__cart__price">
                                                    $55.00
                                                </td>
                                                <td class="shoping__cart__quantity">
                                                    <div class="quantity">
                                                        <div class="pro-qty">
                                                            <input type="text" value="2">
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="shoping__cart__total">
                                                    $110.00
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Shoping Cart Section End -->
            </div>
        </section>
        <!-- Featured Section End -->
                <script src="setofshop/js/dropdown-content.js"></script>

    </body>
</html>
