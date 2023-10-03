<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="static/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<header>
    <div class="header-container">
        <div class="header-wrapper">
            <div class="logoBox">
                <a href="home.jsp"><h1>SOCO</h1></a>
            </div>
            <div class="searchBox">
                <input type="search" id="search-input" >
                <i class="fas fa-search"></i>
            </div>
            
<ul id="suggestion-list" class="list-unstyled">
    <!-- Danh sách g?i ý s? ???c hi?n th? ? ?ây -->
</ul>

            
            <div class="iconBox2">
                <c:if test="${name!=null}">
                    <i class="fa-solid fa-house"></i>
                    <i class="fas fa-user-friends"></i>
                    <i class="fa-solid fa-bell"></i>
                    <% if(session.getAttribute("img") != null){ %>
                    <label><img src="<%= session.getAttribute("img") %>" alt="user"></label>
                    <% }else{ %>
                    <label><img src="https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg" alt="user"></label>
                    <% } %>
                    <i class="fa-solid fa-caret-down" id="dropdownButton"></i>



                    <div class="dropdown-content">
                        <a href="user_profile.jsp"><i class="fas fa-eye"></i>Trang cá nhân</a>
                        <a href=""><i class="fas fa-highlighter"></i>Đổi mật khẩu</a>
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
                 <script>
                            
// G?i hàm khi ng??i dùng nh?p vào ô tìm ki?m
// G?i hàm khi ng??i dùng nh?p vào ô tìm ki?m
document.getElementById("search-input").addEventListener("input", function() {
    var searchTerm = this.value.toLowerCase();
    getMatchingSuggestions(searchTerm);
});

// Hàm ?? l?y danh sách g?i ý t? server (s? d?ng AJAX)
function getMatchingSuggestions(searchTerm) {
    $.ajax({
        url: 'getusernames', // Thay ??i ???ng d?n t?i Servlet ho?c máy ch? c?a b?n
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            var suggestions = data; // Danh sách tên ng??i dùng t? server
            var matchingSuggestions = [];

            suggestions.forEach(function(suggestion) {
                if (suggestion.toLowerCase().includes(searchTerm)) {
                    matchingSuggestions.push(suggestion);
                }
            });

            // Hi?n th? danh sách g?i ý d??i ô tìm ki?m
            var suggestionList = document.getElementById("suggestion-list");
            
            // Ki?m tra xem ô tìm ki?m có tr?ng không
            if (searchTerm === "") {
                suggestionList.innerHTML = ""; // Xóa danh sách g?i ý
            } else {
                suggestionList.innerHTML = ""; // Xóa danh sách g?i ý tr??c khi thêm l?i
                matchingSuggestions.forEach(function(matchingSuggestion) {
                    
                    var suggestionItem = document.createElement("li");
                    var suggestionLink = document.createElement("a");
                    suggestionLink.href = "UserProfile?name=" + matchingSuggestion;
                    suggestionLink.textContent = matchingSuggestion;
                    suggestionItem.appendChild(suggestionLink);
                    suggestionList.appendChild(suggestionItem);
                });
            }
        },
        error: function() {
            console.log('L?i khi l?y danh sách tên ng??i dùng');
        }
    });
}


</script>

