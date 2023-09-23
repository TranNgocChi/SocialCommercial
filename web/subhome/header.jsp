<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <div class="header-container">
        <div class="header-wrapper">
            <div class="logoBox">
                <a href="home.jsp"><h1>SOCO</h1></a>
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
                        <a href="edit_userprofile.jsp"><i class="fas fa-cog"></i>Settings </a>
                        <a href=""><i class="fas fa-highlighter"></i>Change Pasword</a>
                        <a href=""><i class="fas fa-eye"></i>View Your Fans</a>
                        <a href="user_profile.jsp"><i class="fas fa-eye"></i>View Profile</a>
                        <a href="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
                        <!-- N?i dung xu?t hi?n sau khi b?m vào nút -->
                    </div>
                </c:if>
            </div>
            <c:if test="${name==null}">
                <a href="login.jsp" style="font-weight: 800; font-size:35px; color: #3a78ffec">Login</a>
            </c:if>
        </div>
    </div>
</header>

