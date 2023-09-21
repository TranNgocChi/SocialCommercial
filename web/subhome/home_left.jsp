
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="home-left">

    <div class="profile">
        <img src="static/images/user4.jpg" alt="user">
        <h3>${name}</h3>
        <c:if test="${name==null}">
            <h3>Guest</h3>
        </c:if>
    </div>

    <div class="explore">
        <c:if test="${role==1}">
            <a href="admin.jsp"><i class="fa-solid fa-house"></i> Admin</a>
        </c:if>
        <a href="#"><i class="fa-solid fa-house"></i> Home</a>
        <a href="#"><i class="fa-brands fa-shopify"></i> Shopping</a>
        <a href="#"><i class="fa-brands fa-facebook-messenger"></i> Messenger</a>
        <a href="#"><i class="fa-solid fa-circle-plus"></i> Create Post</a>
        <a href="#"><i class="fa-solid fa-bookmark"></i> Liked Posts</a>

        <div><label class="darkTheme"> <span></span></label> Apply Dark Theme</div>
    </div>

</div>