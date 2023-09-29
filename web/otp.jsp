
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- link css -->
        <link rel="stylesheet" href="static/css/login.css">

        <!-- link icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <title>Form SignUp</title>
    </head>

    <body>
        <div class="container">
            <div class="box login">
                <div class="content">
                    <h4 style="color: blue">
                        Nhập mã OTP đã gửi về email:${email} của bạn để kích hoạt tài khoản đăng nhập vào hệ thống của SOCO !!!
                    </h4>



                    <form action="otp" method="POST" id="form">
                        <c:if test="${sessionScope.account == null}">
                            <h3 style="color: red">${requestScope.ms}</h3>
                        </c:if>
                        <c:if test="${sessionScope.account != null}">
                            <h3 style="color: red">${requestScope.error}</h3>
                        </c:if>

                        <div class="form_input">
                            <input type="text" name="otpuser" id="name" required>
                            <label for="name">OTP</label>
                        </div>
                       <input type="hidden" name="name" value="${username}">
                       <input type="hidden" name="pass"  value="${pass}">
                       <input type="hidden" name="email"  value="${email}">
                        <button class="btn submit"> GỬI</button>
                        <h2 style="color:red;margin-top:10px">${mesotp}</h2>
                        <c:set var="mesotp" value="${null}"></c:set>
                        <h4 style="color:red;margin-top:10px">Lưu ý: mã OTP chỉ tồn tại trong 2 phút</h4>
                        <a href="foget.jsp" style="color: white; text-decoration: none;">Forgot Password?</a>
                    </form>

                </div>
            </div>

            <div class="box navigation">
                <div class="content">
                    <div class="nav navigation_signIn">
                        <p>
                              Nếu bạn chưa có tài khoản, vui lòng đăng kí. 
                        </p>

                           
                        <button class="btn layer log">

                            Đăng kí
                        </button>
                    </div>

                    <div class="nav navigation_signUp">
                        <p>
                            Nếu bạn đã có tài khoản, vui lòng đăng nhập.

                        </p>

                        <button class="btn layer out" id="loginButton">
                            Đăng nhập
                        </button>
                    </div>
                </div>
            </div>

            <div class="box register">
                <div class="content">
                    <h3 class="title">
                        Đăng ký
                    </h3>


                    <form action="signup" method="post" id="form">
                        <div class="form_input">
                            <input type="text" name="username" id="name" required value="${not empty usernameValue ? usernameValue : ''}">
                            <label for="name">Tên đăng nhập</label>
                        </div>
                        <div class="form_input">
                            <input type="email" name="email" id="email" required value="${not empty emailValue ? emailValue : ''}">
                            <label for="email">Email</label>
                        </div>
                        <div class="form_input">
                            <input type="password" name="pass" id="password" required>
                            <label for="password">Mật khẩu</label>
                        </div>
                        <div class="form_input">
                            <input type="password" name="pass1" id="password" required>
                            <label for="password">Nhập lại mật khẩu</label>
                        </div>
                        <h2 style="color:red">${msg}</h2>
                        <c:set var="msg" value="${null}" />
                        <button class="btn submit">
                            Đăng ký
                        </button>
                    </form>
                </div>
            </div>


            <div class="marks">
            </div>
        </div>

        <script>
            document.getElementById("loginButton").addEventListener("click", function () {
                window.location.href = "login"; // Redirect to register.jsp
            });
        </script>
    </body>

</html>