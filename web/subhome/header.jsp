<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="static/css/style.css">

<header>
    <div class="header-container">
        <div class="header-wrapper">
            <div class="logoBox">
                <a href="http://localhost:8080/SocialCommercial"><h1>SOCO</h1></a>
            </div>
            <div class="searchBox">
                <input type="search">
                <i class="fas fa-search"></i>
            </div>
            <div class="iconBox2">
                <c:if test="${name!=null}">
                    <i class="fas fa-user-friends"></i>
                    <i class="fa-solid fa-cart-shopping"></i>
                    <i class="fa-solid fa-bell"></i>
                    <label><img src="static/images/user4.jpg" alt="user"></label>
                    <i class="fa-solid fa-caret-down" id="dropdownButton"></i>



                    <div class="dropdown-content">
                        <a href="user_profile.jsp"><i class="fas fa-eye"></i>Trang cá nhân</a>
                        <a href=""><i class="fas fa-highlighter"></i>Đổi mật khẩu</a>
                        <a href=""><i class="fas fa-eye"></i>View Your Fans</a>
                        <a href="logout"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a>
                        <!-- N?i dung xu?t hi?n sau khi b?m vào nút -->
                    </div>
                </c:if>
            </div>
            <c:if test="${name==null}">
                <a href="login" style="font-weight: 1000; font-family: monospace; font-size:20px; color: #4575b5;">Đăng nhập</a>
            </c:if>
        </div>
    </div>
</header>

