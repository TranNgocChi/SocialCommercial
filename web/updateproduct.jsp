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
                   <%@ include file="shop/header_shop.jsp" %>

        </header>
        <div class="home">
           
            <div class="containerr">
                <form action="updatesanpham" method="post">
                    <div class="form-group row">
                        <label for="email" class="col">Danh mục:</label>
                        <input type="text" value="${tendanhmuc}" name="tendanhmuc" class="form-control col" placeholder="Email" readonly>
                    </div>
<input type="hidden" value="${danhmuc}"  name="email" class="form-control col" placeholder="Email" readonly>

                    <div class="form-group row">
                        <label for="fullName" class="col">Tên sản phẩm:</label>
                        <input type="text" id="full-name" name="product_name" class="form-control col"
                               placeholder="Tên sản phẩm" value="${productupdate.productName}" required>
                        <br />
  
                    </div>
                    <div class="form-group row">
                        <label for="shopName" class="col">Ảnh sản phẩm:</label>
                        <input type="text" id="shop-name" value="${productupdate.productImage}"  name="product_image" class="form-control col" placeholder="Ảnh sản phẩm" required>
                    </div>
                 
                    <div class="form-group row">
                        <label for="address" class="col">Số lượng:</label>
                        <input type="text" id="address"  value="${productupdate.productAvailable}"  name="product_available" class="form-control col" placeholder="Số lượng" required>
                    </div>
                    <div class="form-group row">
                        <label for="phone" class="col">Giá tiền:</label>
                        <input type="tel" id="phone" value="${productupdate.productPrice}" name="product_price" class="form-control col" placeholder="Giá tiền" required>
                    </div>
                    <div class="form-group row">
                        <label for="phone" class="col">Mô tả sản phẩm:</label>
                        <input type="tel" id="phone" name="product_description"value="${productupdate.productDescription}" class="form-control col" placeholder="Mô tả sản phẩm" required>
                    </div>
 <input type="hidden" name="id" value="${productupdate.productId}" class="form-control col" placeholder="Mô tả sản phẩm" required>

                    <button type="submit" class="btn btn-primary">Thêm</button>
                </form>


            </div>
        </div>

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


    </body>
</html>





