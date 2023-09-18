<%-- 
    Document   : seller_form
    Created on : Sep 17, 2023, 2:25:10 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- style css link -->
        <link rel="stylesheet" href="static/css/styleonboarding.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>SOCO - Seller</title>
    </head>
    <body>

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


        <div class="row">
            <div class="col">
                
                <form id="registration-form">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="fullname">Full Name:</label>
                        <input type="text" id="full-name" name="fullname" required>
                    </div>
                    <div class="form-group">
                        <label for="shop-name">Shop name:</label>
                        <input type="text" id="shop-name" name="shopname" required>
                    </div>
                    <div class="form-group">
                        <label for="sector">Commodities sector:</label>
                        <select name="sector" id="sector" class="form-control">
                            <option value="department">Online department store</option>
                            <option value="men">Men's Fashion</option>
                            <option value="women">Women's Fashion</option>
                            <option value="phone">Phone&Accessory</option>
                            <option value="elec">Electronics</option>
                            <option value="lap">Computer&Laptop</option>
                            <option value="cos">Cosmetics</option>
                            <option value="toy">Toy</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" id="address" name="address" required>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone number:</label>
                        <input type="tel" id="phone" name="phone" required>
                    </div>
                    <button type="submit">Register</button>
                </form>
            </div>
        </div>
        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


    </body>
</html>






