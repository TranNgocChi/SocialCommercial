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
                            <h2>SOCO</h2>
                        </div>
                        <div class="content">
                            <h5>Sign up to become a SOCO Seller</h5>
                        </div>
                    </div>
                    <div class="iconBox2">
                        <label><img src="static/images/user.jpg" alt="user"></label>
                        <i class="fa-solid fa-caret-down"></i>
                    </div>
                </div>
            </div>
        </header>


        <!-- header section end -->
        <!-- home section start -->


        <div class="home">
            <div class="container">
                <h1>Welcome to SOCO</h1>
                <p>To register to sell on SOCO, you need to provide some basic information.</p>
                <a href="request_form.jsp">Start registration</a>
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