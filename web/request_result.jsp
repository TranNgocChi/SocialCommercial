<%-- 
    Document   : onboarding
    Created on : Sep 17, 2023, 2:16:17 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>SOCO - Seller</title>
        <!-- style css link -->
        <link rel="stylesheet" href="setofshop/css/styleonboarding.css">
        <!-- fontawesome css link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>

        <!-- header section start -->


        <header>
            <div class="header-container">


                <div class="header-wrapper">
                    <div class="logoBox">
                        <div class="logo-soco">
                            <a href="shopping"><h2>SOCO</h2></a>
                        </div>
                        <div class="content">
                            <h5>Đăng ký bán hàng trên SOCO</h5>
                        </div>
                    </div>
                    <div class="iconBox2">
                        <label><img src="https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg" alt="user"></label>
                        <i class="fa-solid fa-caret-down"></i>
                    </div>
                </div>
            </div>
        </header>


        <!-- header section end -->
        <!-- home section start -->


        <div class="home">
            <div class="containerr">
                <h1>Request Result</h1>
                <c:choose>
                    <c:when test="${insertResult}">
                        <p>Yêu cầu của bạn đã được gửi thành công. Bạn sẽ được quản trị viên liên hệ sớm.</p>
                    </c:when>
                </c:choose>
                <a href="shopping">Quay lại trang SOCO Shopping</a>
            </div>
        </div>



        <script>
            var darkButton = document.querySelector(".darkTheme");

            darkButton.onclick = function () {
                darkButton.classList.toggle("button-Active");
                document.body.classList.toggle("dark-color")
            }

        </script>

    </body>
</html>