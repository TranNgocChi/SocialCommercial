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
        <link rel="stylesheet" href="setofshop/css/styleonboarding.css">
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
                                <li class="active">Chờ vận chuyển</li>
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
                                                    <img src="setofshop/img/cart/cart-2.jpg" alt="">
                                                    <h5><a href="">94123659-7EDC-410B-9C29-D234081571BB</a></h5>
                                                </td>
                                                <td class="shoping__cart__price">
                                                    $55.00
                                                </td>
                                                <td class="shoping__cart__quantity">
                                                    <div class="quantity">
                                                        <form method="POST" action="">
                                                            <button class="custom-button">Nhận Đơn</button>
                                                        </form>
                                                    </div>
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
        

    </body>
</html>
<style>
                                                            /* CSS cho nút */
.custom-button {
    background-color: #3498db; /* Màu nền */
    color: #fff; /* Màu chữ */
    border: none; /* Loại bỏ viền */
    padding: 10px 20px; /* Kích thước nút */
    border-radius: 5px; /* Bo tròn viền */
    cursor: pointer; /* Hình con trỏ khi di chuột vào nút */
    font-weight: bold; /* Đậm */
    text-transform: uppercase; /* In hoa chữ */
}

/* Hover effect khi di chuột vào nút */
.custom-button:hover {
    background-color: #2980b9; /* Màu nền khi hover */
}
                                                        
</style>