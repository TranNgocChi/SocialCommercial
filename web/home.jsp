
<%@page import="Model.UserPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SOCO</title>
        <!-- style css link -->
        <link rel="stylesheet" href="static/css/style.css">
        <!-- fontawesome css link -->
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
                                <div class="fb-post1-container">
                                    <div class="fb-post1-header">
                                        <ul>
                                            <li class="active">popular</li>
                                            <li>following</li>
                                        </ul>
                                    </div>
                                    <%if( session.getAttribute("listPostPopular") != null){%>
                                     <% for(UserPost home_post : (List<UserPost>) session.getAttribute("listPostPopular")){%>
                                    <div class="fb-p1-main">
                                        <div class="post-title">
                                            <img src="static/images/user2.jpg" alt="user picture">
                                            <ul>
                                                <li><h3>Arham Kabir <span> <%= home_post.getPost_date() %></span></h3></li>
                                                <li><span>02 march at 12:55 PM</span></li>
                                            </ul>
                                            <p>Hello Everyone Thanks for Watching Please SUBSCRIBE My Channel - Like Comments and Share
                                                <a href="https://www.youtube.com/channel/UCHhGX-DD7A8jq7J_NPGN6gA">https://www.youtube.com/channel/UCHhGX-DD7A8jq7J_NPGN6gA</a>
                                            </p>
                                        </div>
                                        <div class="post-images">
                                            <div class="post-images1" style="width: 100%; overflow: hidden;">
                                                <img src="static/images/pp.jpg" alt="post images 01" style="height: 100%;">
                                                
                                            </div>
                                        </div>
                                        <div class="like-comment" style="font-size: 35px;">
                                            <ul>
                                                <li >
                                                    <a href=""><i class="far fa-heart"></i><span>22k </span></a>
                                                    
                                                </li>
                                                <li style="margin-left: 70px;"><i class="fa-regular fa-comment-dots"></i> <span>555 comments</span></li>
                                                <li style="margin-left: 70px;"><a href="removePost?post_id=${post_id}"><i class="fas fa-trash-alt"></i></a><span> Delete</span></li>
                                            </ul>
                                        </div>
                                        <br>
                                        <div class="comment">
                                            <img src="static/images/pp.jpg" alt="user">
                                            <div class="comment-content">
                                                <span class="comment-username" style="margin-left: -3px; font-size: 18px;">GauGau</span>
                                                <span style="color: grey; margin-left: 5px; font-size: 13px;">12-22-2222</span>
                                                <p>Day la binh luan moi nhat, xin chao tat ca cac ban ákdj ád ád ád sadk 
                                                </p>
                                            </div>
                                            <a href="" style="color: grey; ">
                                                <i class="fa-solid fa-delete-left"></i>
                                            </a>
                                        </div>
                                        <form method="POST" action="">
                                            <div class="comment-box">
                                              <input type="text" placeholder="Post a comment" name="comment" />
                                              <button type="submit">Post</button>
                                            </div>
                                        </form>        
                                    </div>
                                    <div style="border-bottom: 2px solid black; margin-bottom: 20px; "></div>
                                    <% }}else{ %>  
                                    <h3 style="margin-top: 20px; margin-left: 30px; font-size: 25px">
                                        Chưa có bài viết nào. Vui lòng đăng nhập để xem bài viết
                                    </h3>
                                    <%}%>
                                </div>
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

