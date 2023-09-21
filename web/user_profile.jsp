
<%@page import="java.util.UUID"%>
<%@page import="Model.User"%>
<%@page import="DAO.AdminDAO"%>
<%@page import="java.util.Date"%>
<%@page import="Model.UserPost"%>
<%@page import="DAO.UserPostDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="static/css/user_profile.css">
    <link rel="stylesheet" href="static/css/style.css">
<main>
    
    <%
                String post_title = "";
                String post_content = "";
                String post_image ="";
                String email = "";
                String phone="";
                String country="";
                String username = "";
                Date post_date = null;
                Object user_id = session.getAttribute("id"); 
                
                AdminDAO admin = new AdminDAO();
                for(User user : admin.getAll()){
                    if(user_id.equals(user.getId())){
                        username = user.getName();
                        email = user.getEmail();
                        phone = user.getNumber();
                        country = user.getNumber();
                        break;
                    }
                }
                
                UserPostDAO userposts = new UserPostDAO();
                for(UserPost post : userposts.getUserPosts()){
                    if(user_id==post.getUser_id()){
                        post_title = post.getPost_title();
                        post_content = post.getPost_content();
                        post_image = post.getPost_image();
                        post_date = post.getPost_date(); 
                    }
                }
            %>
    <div id="profile-upper">
      <div id="profile-banner-image">
        <img src="https://imagizer.imageshack.com/img921/9628/VIaL8H.jpg" alt="Banner image">
      </div>
      <div id="profile-d">
        <div id="profile-pic">
          <img src="https://imagizer.imageshack.com/img921/3072/rqkhIb.jpg">
        </div>
        <div id="u-name"><%= username %></div>
        <div class="tb" id="m-btns">
            <a href="edit_userprofile.jsp" class="fb-link">
                <div class="fb-action">
                    <i class="fas fa-edit"></i>
                    Edit <span>Profile</span>
                </div>
            </a>
            <a href="#" class="fb-link" >
                <div class="fb-action" style="background-color: rgb(107, 98, 98)">
                    <i class="fas fa-user-plus"></i>
                    Follow
                </div>
            </a>

        </div>
      </div>
      <div id="black-grd"></div>
    </div>
    <div id="main-content">
      <div class="tb">
        <div class="td" id="l-col">
          <div class="l-cnt">
            <div class="cnt-label">
              <i class="l-i" id="l-i-i"></i>
              <span>Intro</span>
            </div>
            <div id="i-box">
              <div id="u-occ">Name: <span><%= username %> </span></div>
              <div id="intro-line">Email: <span><%= email %> </span></div>
              <div id="u-occ">Phone Number: <span><%= phone %> </span></div>
              
            </div>
          </div>
          <div class="l-cnt l-mrg">
            <div class="cnt-label">
              <i class="l-i" id="l-i-p"></i>
              <span>Photos</span>
            </div>
            <div id="photos">
              <div class="tb">
                <div class="tr">
                  <div class="td"></div>
                  <div class="td"></div>
                  <div class="td"></div>
                </div>
                <div class="tr">
                  <div class="td"></div>
                  <div class="td"></div>
                  <div class="td"></div>
                </div>
                <div class="tr">
                  <div class="td"></div>
                  <div class="td"></div>
                  <div class="td"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="l-cnt l-mrg">
            <div class="cnt-label">
              <i class="l-i" id="l-i-k"></i>
              <span>Did You Know<i id="k-nm">1</i></span>
            </div>
            <div>
              <div class="q-ad-c">
                <a href="#" class="q-ad">
                  <img src="https://imagizer.imageshack.com/img923/1849/4TnLy1.png">
                  <span>My favorite superhero is...</span>
                </a>
              </div>
              <div class="q-ad-c">
                <a href="#" class="q-ad" id="add_q">
                  <i class="material-icons">add</i>
                  <span>Add Answer</span>
                </a>
              </div>
            </div>
          </div>
          <div id="t-box">
            <a href="#">Privacy</a> <a href="#">Terms</a> <a href="#">Advertising</a> <a href="#">Ad Choices</a> <a href="#">Cookies</a> <span id="t-more">More<i class="material-icons">arrow_drop_down</i></span>
            <div id="cpy-nt">Facebook &copy; <span id="curr-year"></span></div>
          </div>
        </div>
        <div class="td" id="m-col">
          <div>
            <div class="post">
              <div class="tb">
                <a href="#" class="td p-p-pic"><img src="https://imagizer.imageshack.com/img923/2452/zifFKH.jpg" alt="Rajeev's profile pic"></a>
                <div class="td p-r-hdr">
                  <div class="p-u-info">
                    <a href="#"><%= username %></a>
                  </div>
                  <div class="p-dt">
                    <i class="fas fa-calendar-week"></i>
                    <span><%= post_date %></span>
                  </div>
                </div>
              </div>
                <h3><%= post_title %></h3>
                <p><%= post_content %></p>
              <a href="#" class="p-cnt-v">
                <img src="<%= post_image %>">
              </a>  
            </div>
          </div>
        </div>
      </div>
    </div>
    <main>
  
</html>
