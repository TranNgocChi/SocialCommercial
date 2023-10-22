
<%@page import="java.util.List"%>
<%@page import="Model.UserPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
       
     </head>
    <body>
    <div class="container">
            <div class="profile">
                <div class="profile-image">
                    <a href="${link_image}"><img src="${link_image}" width="280px" height="300px" alt=""></a>
                
                </div>
                <div class="profile-user-settings row">
                    <div class="col-md-12">
                        <h1 class="profile-user-name" style="font-weight: 800;">${fullName}</h1>
                    </div>
                    <div class="col-md-12">
                         <% if(request.getAttribute("check") != null){ %>
                         <a href="DisplayEditUserProfile" style="color: black;">
                            <button class="btn profile-edit-btn" style="background-color: #3a78ffec"><i class="fas fa-edit"></i> Edit Profile</button>
                        </a>   
                        <a href="create_post.jsp" style="color: black;">
                            <button class="btn profile-edit-btn" style="background-color: grey"><i class="fas fa-plus-circle"></i> Create Post</button>
                        </a>
                    <% }else{%>
                    <a href="FollowFriend?friend_id=<%= request.getAttribute("user_id") %>" style="color: black;">
                        <button class="btn profile-edit-btn" style="background-color: #3a78ffec">
                         
                            <% if (request.getAttribute("check_follow") != null) {%>
                        <i class="fas fa-user-check"></i> Unfollow</button>
                        <%}else{%>
                        <i class="fas fa-user-plus"></i> Follow</button>
                        <%}%>
                    </a>
                    <a style="color: black;">
                        <button class="btn profile-edit-btn" style="background-color: grey">
                        <i class="fab fa-facebook-messenger"></i> Messenger</button>
                    </a>
                    <% } %>
                    </div>
                   
                    
                </div>

                <div class="profile-stats">

                        <ul>
                            <li><span class="profile-stat-count">${count}</span> posts</li>
                            <li>
                                <a href="ViewFollow?my_id=<%= session.getAttribute("id") %>" style="color: #3a78ffec; text-decoration: none;">
                                    <span class="profile-stat-count">${follower}</span> followers</a>
                            </li>
                            <li>
                                <a href="ViewFollow?my_id=<%= session.getAttribute("id") %>" style="color: #3a78ffec; text-decoration: none;">
                                    <span class="profile-stat-count">${following}</span> following
                                </a>
                            </li>
                        </ul>

                </div>

                <div class="profile-bio">
                    <p><i class="fas fa-info-circle"></i> ${fullName} - ${gender}</p>
                    <p><i class="fas fa-heart"></i> ${statusNow}</p>
                    <p><i class="fas fa-school"></i> ${school}</p>
                    <p><i class="fas fa-thumbs-up"></i> ${favourite}</p>
                    <p><span style="font-weight:600">Bio: </span>
                    ${bio}
                    </p>️

                </div>

            </div>
            <!-- End of profile section -->

    </div>
    <% if(request.getAttribute("check_listUserPost") != null){ %>                
        <h1 style="font-size: 30px;
            font-weight: 700;
            margin-left: 500px;">Danh sách bài viết đã đăng tải</h1>
            <br><br>
        <div class="container">
            <div class="gallery">
                <% for(UserPost post_user : (List<UserPost>) request.getAttribute("listUserPost")){%>
                <a href="PostDetail?post_id=<%= post_user.getId()%>&fullName=${fullName}&user_id=<%= request.getParameter("user_id") %> ">
                        <div class="gallery-item" tabindex="0">
                            <img src="<%= post_user.getPost_image() %>" class="gallery-image" alt="">

                            <div class="gallery-item-info">
                               <ul>
                                    <li class="gallery-item-likes"><span class="visually-hidden">Likes:</span><i class="fas fa-heart" aria-hidden="true"></i> ${listLikesSize}</li>
                                    <li class="gallery-item-comments"><span class="visually-hidden">Comments:</span><i class="fas fa-comment" aria-hidden="true"></i> 2</li>
                                </ul>
                            </div>
                        </div>
                    </a>
                <% } %> 
            </div>

                <!-- End of gallery -->
        </div>
    <% }else{ %>
        <% if(request.getAttribute("check") != null){ %>
        <p style="color:black;
        margin: 50px 300px;
        font-size: 35px;
        font-weight: 700;
        ">You don't have any posts<i class="fas fa-address-card" style="color: grey;"></i><br>
            Click <a href="create_post.jsp"><i class="fas fa-plus-square"></i></a> to create your first post
        </p>
        <%}else{%>
        <p style="color:black;
        margin: 50px 450px;
        font-size: 35px;
        font-weight: 700;
        ">Don't have any posts
        </p>
        <% } %>
    <% } %>
	<!-- End of container -->
    </body>
</html>
<style>
    
:root {
    font-size: 10px;
}

*,
*::before,
*::after {
    box-sizing: border-box;
}

body {
    font-family: "Open Sans", Arial, sans-serif;
    min-height: 100vh;
    background-color: #fafafa;
    color: #262626;
    padding-bottom: 3rem;
}

img {
    display: block;
}

.container {
    max-width: 93.5rem;
    margin: 0 auto;
    padding: 0 2rem;
}

.btn {
    display: inline-block;
    font: inherit;
    background: none;
    border: none;
    color: inherit;
    padding: 0;
    cursor: pointer;
}

.btn:focus {
    outline: 0.5rem auto #4d90fe;
}

.visually-hidden {
    position: absolute !important;
    height: 1px;
    width: 1px;
    overflow: hidden;
    clip: rect(1px, 1px, 1px, 1px);
}

/* Profile Section */

.profile {
    padding: 5rem 0;
}

.profile::after {
    content: "";
    display: block;
    clear: both;
}

.profile-image {
    float: left;
    width: calc(33.333% - 1rem);
    display: flex;
    justify-content: center;
    align-items: center;
    margin-right: 3rem;
}

.profile-image img {
    border-radius: 50%;
}

.profile-user-settings,
.profile-stats,
.profile-bio {
    float: left;
    width: calc(66.666% - 2rem);
}

.profile-user-settings {
    margin-top: 1.1rem;
}

.profile-user-name {
    display: inline-block;
    font-size: 3.2rem;
    font-weight: 300;
}

.profile-edit-btn {
    font-size: 1.4rem;
    line-height: 1.8;
    border: 0.1rem solid #dbdbdb;
    border-radius: 0.3rem;
    padding: 0 2.4rem;
    margin-left: 2rem;
}

.profile-settings-btn {
    font-size: 2rem;
    margin-left: 1rem;
}

.profile-stats {
    margin-top: 2.3rem;
}

.profile-stats li {
    display: inline-block;
    font-size: 1.6rem;
    line-height: 1.5;
    margin-right: 4rem;
    cursor: pointer;
}

.profile-stats li:last-of-type {
    margin-right: 0;
}

.profile-bio {
    font-size: 1.6rem;
    font-weight: 400;
    line-height: 1.5;
    margin-top: 2.3rem;
}

.profile-real-name,
.profile-stat-count,
.profile-edit-btn {
    font-weight: 600;
}

/* Gallery Section */

.gallery {
    display: flex;
    flex-wrap: wrap;
    margin: -1rem -1rem;
    padding-bottom: 3rem;
}

.gallery-item {
    position: relative;
    flex: 1 0 22rem;
    margin: 1rem;
    color: #fff;
    cursor: pointer;
}

.gallery-item:hover .gallery-item-info,
.gallery-item:focus .gallery-item-info {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    top: 0;
    width: 330.5px;
    height: 330.5px;
    background-color: rgba(0, 0, 0, 0.3);
}

.gallery-item-info {
    display: none;
}

.gallery-item-info li {
    display: inline-block;
    font-size: 1.7rem;
    font-weight: 600;
}

.gallery-item-likes {
    margin-right: 2.2rem;
}

.gallery-item-type {
    position: absolute;
    top: 1rem;
    right: 1rem;
    font-size: 2.5rem;
    text-shadow: 0.2rem 0.2rem 0.2rem rgba(0, 0, 0, 0.1);
}

.fa-clone,
.fa-comment {
    transform: rotateY(180deg);
}

.gallery-image {
    width: 330.5px;
    height: 330.5px;
    object-fit: cover;
}

/* Loader */

.loader {
    width: 5rem;
    height: 5rem;
    border: 0.6rem solid #999;
    border-bottom-color: transparent;
    border-radius: 50%;
    margin: 0 auto;
    animation: loader 500ms linear infinite;
}

/* Media Query */

@media screen and (max-width: 40rem) {
    .profile {
        display: flex;
        flex-wrap: wrap;
        padding: 4rem 0;
    }

    .profile::after {
        display: none;
    }

    .profile-image,
    .profile-user-settings,
    .profile-bio,
    .profile-stats {
        float: none;
        width: auto;
    }

    .profile-image img {
        width: 7.7rem;
    }

    .profile-user-settings {
        flex-basis: calc(100% - 10.7rem);
        display: flex;
        flex-wrap: wrap;
        margin-top: 1rem;
    }

    .profile-user-name {
        font-size: 2.2rem;
    }

    .profile-edit-btn {
        order: 1;
        padding: 0;
        text-align: center;
        margin-top: 1rem;
    }

    .profile-edit-btn {
        margin-left: 0;
    }

    .profile-bio {
        font-size: 1.4rem;
        margin-top: 1.5rem;
    }

    .profile-edit-btn,
    .profile-bio,
    .profile-stats {
        flex-basis: 100%;
    }

    .profile-stats {
        order: 1;
        margin-top: 1.5rem;
    }

    .profile-stats ul {
        display: flex;
        text-align: center;
        padding: 1.2rem 0;
        border-top: 0.1rem solid #dadada;
        border-bottom: 0.1rem solid #dadada;
    }

    .profile-stats li {
        font-size: 1.4rem;
        flex: 1;
        margin: 0;
    }

    .profile-stat-count {
        display: block;
    }
}

/* Spinner Animation */

@keyframes loader {
    to {
        transform: rotate(360deg);
    }
}

/*

The following code will only run if your browser supports CSS grid.

Remove or comment-out the code block below to see how the browser will fall-back to flexbox & floated styling. 

*/

@supports (display: grid) {
    .profile {
        display: grid;
        grid-template-columns: 1fr 2fr;
        grid-template-rows: repeat(3, auto);
        grid-column-gap: 3rem;
        align-items: center;
    }

    .profile-image {
        grid-row: 1 / -1;
    }

    .gallery {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(22rem, 1fr));
        grid-gap: 11rem;
    }

    .profile-image,
    .profile-user-settings,
    .profile-stats,
    .profile-bio,
    .gallery-item,
    .gallery {
        width: auto;
        margin: 0;
    }

    @media (max-width: 40rem) {
        .profile {
            grid-template-columns: auto 1fr;
            grid-row-gap: 1.5rem;
        }

        .profile-image {
            grid-row: 1 / 2;
        }

        .profile-user-settings {
            display: grid;
            grid-template-columns: auto 1fr;
            grid-gap: 1rem;
        }

        .profile-edit-btn,
        .profile-stats,
        .profile-bio {
            grid-column: 1 / -1;
        }

        .profile-user-settings,
        .profile-edit-btn,
        .profile-settings-btn,
        .profile-bio,
        .profile-stats {
            margin: 0;
        }
    }
}

</style>

