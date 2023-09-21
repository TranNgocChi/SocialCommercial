            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <header>
        <div class="header-container">
            <div class="header-wrapper">
                <div class="logoBox">
                    <img src="static/images/facebook-logo.png" alt="logo">
                </div>
                <div class="searchBox">
                    <input type="search">
                    <i class="fas fa-search"></i>
                </div>
                <div class="iconBox2">
                    <i class="fas fa-user-friends"></i>
                    <i class="fa-solid fa-cart-shopping"></i>
                    <i class="fa-solid fa-bell"></i>
                    <label><img src="static/images/user4.jpg" alt="user"></label>
                    <i class="fa-solid fa-caret-down" id="dropdownButton"></i>
                    <c:if test="${name!=null}">
   

                    <div class="dropdown-content">
                        <a href=""><i class="fas fa-cog"></i>Settings </a>
                        <a href=""><i class="fas fa-highlighter"></i>Change Pasword</a>
                        <a href=""><i class="fas fa-eye"></i>View Your Fans</a>
                        <a href="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
                    <!-- N?i dung xu?t hi?n sau khi b?m vào nút -->
                    </div>
                    </c:if>
                    </div>
                    <c:if test="${name==null}">
                       <a href="login.jsp">Login</a>
                    </c:if>
                </div>
        </div>
    </header>

            