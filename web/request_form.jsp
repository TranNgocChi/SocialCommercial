<%-- 
    Document   : seller_form
    Created on : Sep 17, 2023, 2:25:10 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SOCO - Seller</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <!-- style css link -->
        <link rel="stylesheet" href="setofshop/css/styleonboarding.css">
        <!-- fontawesome css link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
        <div class="home">
            <div class="container">
                <form action="RequestSetRoleServlet" method="post">
                    <div class="form-group row">
                        <label for="email" class="col">Email:</label>
                        <input type="text" id="email" name="email" class="form-control col" placeholder="Email" required>
                    </div>
                    <div class="form-group row">
                        <label for="fullName" class="col">Full Name:</label>

                        <input type="text" id="full-name" name="fullName" class="form-control col" placeholder="Full Name" required>
                        <br />

                    </div>
                    <div class="form-group row">
                        <label for="shopName" class="col">Shop name:</label>
                        <input type="text" id="shop-name" name="shopName" class="form-control col" placeholder="Shop name" required>
                    </div>
                    <div class="form-group row">
                        <label for="commoditiesSector" class="col">Commodities sector:</label>
                        <select name="commoditiesSector" id="sector" class="form-control col">
                            <option selected>Choose...</option>
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
                    <div class="form-group row">
                        <label for="address" class="col">Address:</label>
                        <input type="text" id="address" name="address" class="form-control col" placeholder="Address" required>
                    </div>
                    <div class="form-group row">
                        <label for="phone" class="col">Phone number:</label>
                        <input type="tel" id="phone" name="phone" class="form-control col" placeholder="Phone number" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit Request</button>
                </form>


            </div>
        </div>

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


    </body>
</html>





