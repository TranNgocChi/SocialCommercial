
<%@page import="java.util.Date"%>
<%@page import="Model.UserPost"%>
<%@page import="DAO.UserPostDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="static/images/favicon.ico" type="image/x-icon">
        <title>SOCO</title>
        <!-- style css link -->
        <link rel="stylesheet" href="static/css/style.css">
        <!-- fontawesome css link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <%  
            Object user_now = session.getAttribute("id");
            Object post_userId = null;
            Object post_id = request.getParameter("post_id"); 
            String post_title = "";    
            String post_content = "";
            String post_image = "";
            Date post_date = null;
            UserPostDAO manageUserPost = new UserPostDAO();
            for(UserPost post : manageUserPost.getUserPosts()){
                if(post.getId().equals(post_id)){
                    post_userId = post.getUser_id();
                    post_title = post.getPost_title();
                    post_content = post.getPost_content();
                    post_image = post.getPost_image();
                    post_date = post.getPost_date();
                    break;
                }
            }
        %>
        <!-- home section start -->
        <div class="fb-post1" >
            <div class="fb-post1-container">
                <div class="post-title" >
                    <img src="static/images/user2.jpg" alt="user picture">
                    <ul>
                        <li><h3><%= request.getParameter("fullName") %> </h3></li> 
                        <li><span><%= post_date %></span></li> 
                    </ul>
                    <a href="user_profile.jsp" style="font-size: 40px; margin-bottom: 20px; color: black;">
                        <i class="far fa-times-circle"></i>
                    </a>
                    <p><%= post_content %></p>
                    <a href="<%= post_image %>"><img src="<%= post_image %>" width="700px" height="660px"  alt="post images 01" ></a>
                </div>
                <div class="like-comment" style="font-size: 26px; ">
                    <ul>
                        <li><a href="LikePost?post_id=<%= post_id %>&fullName=<%= request.getParameter("fullName") %>">
                            ${like_icon}</a> 22k</li>
                        <li><i class="fa-regular fa-comment-dots"></i> 555</li>
                        <% if(post_userId.toString().toLowerCase().equals(user_now.toString().toLowerCase())){ %>
                        <li><a href="removePost?post_id=<%= post_id %>"><i class="fas fa-trash-alt"></i></a> Delete</li>
                        <% } %>
                    </ul>
                    <div class="comment">
                        <img src="SavedImages/Screenshot 2023-08-01 182140.png" alt="user">
                        <div class="comment-content">
                          <span class="comment-username">Tên người comment</span>
                          <p>Đây là nội dung comment của người dùng.</p>
                        </div>
                      </div>
                      <form>
                        <div class="comment-box">
                          <input type="text" placeholder="Post a comment" name="comment" />
                          <button type="submit">Post</button>
                        </div>
                      </form>
                </div>
            </div>

            
        </div>

 
    </body>
</html>

<script src="static/js/js.js"></script>

<style>
       .comment {
  display: flex;
  align-items: flex-start;
  padding: 8px;
  margin: 40px 8px;
}

.comment img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  object-fit: cover;
  margin-right: 10px;
}

.comment-content {
  flex: 1;
}

.comment-username {
  font-weight: bold; /* Tạo độ đậm cho tên người comment */
}

.comment-content p {
  padding: 8px;
  border-radius: 10px;
  margin: 0;
}

.comment-box {
  display: flex;
  align-items: center;
  width: 100%;
  max-width: 800px;
  margin: 30px 6px;
  background-color: #fff;
  border: 1px solid #ccc;
  padding: 8px;
  border-radius: 50px;
}

.comment-box input[type="text"] {
  flex: 1;
  padding: 8px;
  border: none;
  outline: none;
}

.comment-box button[type="submit"] {
  background-color: #007bff;
  color: #fff;
  border: none;
  padding: 8px 20px;
  margin: 10px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.comment-box button[type="submit"]:hover {
  background-color: #0056b3;
}

.like-comment i {
  font-size: 40px;
}

.like-comment ul li:nth-child(-n+2) {
  margin-right: 150px;
}

.like-comment ul li:nth-child(n+3) {
  margin-left: 150px;
}
    .post-title a img {
        margin-top: 15px;
        width: 830px;
        height: 400px;
    }
    .fb-post1{
        margin: 30px 200px;
        display: flex;
        width: 890px;
        
    }

</style>