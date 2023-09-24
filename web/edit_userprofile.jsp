<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="static/images/favicon.ico" type="image/x-icon">
        <title>facebook.com</title>
        <!-- style css link -->
        <link rel="stylesheet" href="static/css/style_1.css">
        <!-- fontawesome css link -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>

        <!--Header-->
        <%@ include file="subhome/header.jsp" %>
        <!--Header-->
        <!-- home section start -->
        <div class="home">
            <div class="container">
                <div class="home-weapper">
                    <!-- home left start here -->
                    <%@ include file="subhome/home_left.jsp" %>
                    <!-- home left end here -->
                    <!-- home center start here -->
                    <div class="home-center">
                        <div class="home-center-wrapper">
                            <div class="fb-post1">

                                <form class="form" action="EditUserProfile" method="POST" enctype="multipart/form-data">
                                    <h2 style="color: #3a78ffec;">Edit Profile</h2>
                                    <h3 style="color: #3a78ffec;">Name: <input type="text" class="input-field" placeholder="Name" name="name"></h3>
                                    <h3 style="color: #3a78ffec;">Email: <input type="email" class="input-field" placeholder="Email" name="email"></h3>
                                    <h3 style="color: #3a78ffec;">Phone number: <input type="tel" class="input-field" placeholder="Phone Number" name="phone"></h3>
                                    <h3 style="color: #3a78ffec;">Country: <input type="text" class="input-field" placeholder="Country" name="name"></h3>
                                    <h3 style="color: #3a78ffec;">Province: <input type="text" class="input-field" placeholder="Province" name="name"></h3>
                                    <h3 style="color: #3a78ffec;">District: <input type="text" class="input-field" placeholder="District" name="name"></h3>
                                    <h3 style="color: #3a78ffec;">Town: <input type="text" class="input-field" placeholder="Town" name="name"></h3>
                                    <h3 style="color: #3a78ffec;">Location: <input type="text" class="input-field" placeholder="Location" name="name"></h3>
                                    <h3 style="color: #3a78ffec;">Image: <input type="file" class="input-field" id="image" name="image"></h3>
                                    <button>Save Profile</button>
                                </form>






                            </div>
                        </div> <!-- home center wrapper end -->
                    </div> <!-- home center end -->

                    <!-- home right start here -->
                    <%@ include file="subhome/home_right.jsp" %>
                    <!-- home right end here -->
                </div>
            </div>
        </div>

    </body>
</html>

<script src="static/js/js.js"></script>



