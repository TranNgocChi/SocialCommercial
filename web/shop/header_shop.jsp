<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header section start -->
<header>
    <div class="header-container">


        <div class="header-wrapper">
            <div class="logoBox">
                <div class="logo-soco">
                    <a href="shopping"><h2>SOCO</h2></a>
                    <a href="shopping.jsp"><h2>SOCO</h2></a>
                    <h2>SOCO</h2>
                </div>
                <div class="content">
                    <a href="onboarding.jsp"><h5>Đăng ký bán hàng trên SOCO</h5></a>
                </div>
            </div>
            <c:choose>
                <c:when test="${name != null}">
                    <div class="iconBox2" style="padding: 0 10px;">
                        <a href="home.jsp" style="margin-right: 0;"><i class="fa fa-home"></i></a>
                        <a href="cart.jsp" style="margin-right: 10px;"><i class="fa fa-shopping-cart"></i></a>
                        <label><img src="https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg" alt="user"></label>

                    <div class="iconBox2" style="padding: 0 10px;">
                        <a href="cart.jsp" style="margin-right: 10px;"><i class="fa fa-shopping-cart"></i></a>
                    <div class="iconBox2">
                        <label><img src="static/images/user.jpg" alt="user"></label>
                        <span class="arrow_carrot-down"></span>
                    </div>
                    <div class="header-dropdown">
                        <div class="dropdown-content">
                            <a href="edit_userprofile.jsp">Hồ sơ của bạn</a>
                            <a href="purchase.jsp">Đơn mua</a>

                            <a href="purchase.jsp">Đơn mua</a>
                            <a href="#">Đơn mua</a>
                            <a href="logout">Đăng xuất</a>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div id="loginContainer">
                        <a href="login" style="font-weight: 1000; font-family: monospace; font-size: 20px; color: #4575b5;">Đăng nhập</a>
                    </div>
                </c:otherwise>
            </c:choose>


        </div>
    </div>

</header>
        <script src="setofshop/js/dropdown-content.js"></script>

        <script src="setofshop/js/dropdown-content.js"></script>

<!-- header section end -->

