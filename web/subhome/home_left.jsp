<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="static/css/style.css">

<div class="home-left">

    <div class="profile">
<<<<<<< HEAD
        <img src="https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg" alt="user">
=======
        <% if (session.getAttribute("img") == null){ %>
        <a href="user_profile.jsp">
            <img src="https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg" alt="user">
        </a>
        <% }else{ %>
        <img src="${img}" alt="user">
        <% } %>
>>>>>>> main
        <h3>${name}</h3>
        <c:if test="${name==null}">
            <h3>Khách</h3>
        </c:if>
    </div>

    <div class="explore">
        <c:if test="${role==1}">
            <a href="admin.jsp"><i class="fa-solid fa-house"></i> Admin</a>
        </c:if>
        <a href="home.jsp"><i class="fa-solid fa-house"></i> Trang chủ</a>
        <a href="shopping.jsp"><i class="fa-brands fa-shopify"></i> Shopping</a>
        <a href="#"><i class="fa-brands fa-facebook-messenger"></i> Messenger</a>
        <a href="create_post.jsp"><i class="fa-solid fa-circle-plus"></i> Tạo bài viết</a>
        <a href="#"><i class="fa-solid fa-bookmark"></i> Lưu bài viết</a>

    </div>

</div>