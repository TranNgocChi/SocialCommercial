<%-- 
    Document   : sellerstatusdemo
    Created on : Oct 9, 2023, 4:05:56 PM
    Author     : DELL
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                       <th>User id</th>
                    <th>Email</th>
                    <th>FullName</th>
                    <th>Shop Name</th>
                    <th>Danh mục</th>
                    <th>Địa chỉ</th>
                    <th>Phone</th>
                    <th>Trạng thái</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="mem" items="${listreq}">
                           
                <tr>
                     <td>${mem.userid}</td>
                    <td>${mem.email}</td>
                      <td>${mem.fullName}</td>
                    <td>${mem.shopName}</td>
                    <td>${mem.namecateogry}</td>
                    <td>${mem.phone}</td>
                     <td>${mem.address}</td>
                     <c:if test="${mem.status==null}">
                       <td><form action="SetRole" style="text-align: center" method="post" >
                               <input type="hidden" name="action" value="OK">
                            <input type="hidden" name="iduser" value="${mem.userid}">
                            <input type="hidden" name="id" value="${mem.id}">
                             <input type="hidden" name="email" value="${mem.email}">
                            <input type="submit" value="OK">
                        </form>
                       <form action="SetRole" style="text-align: center" method="post" >
                           <input type="hidden" name="action" value="NO">
                            <input type="hidden" name="iduser" value="${mem.userid}">
                            <input type="hidden" name="id" value="${mem.id}">
                            <input type="hidden" name="email" value="${mem.email}">
                            <input type="submit" value="NOT OK">
                        </form></td>
                    </c:if>
                       <c:if test="${mem.status=='NOT OK'}">
    <td style="color:red">${mem.status}</td>
</c:if>
      <c:if test="${mem.status=='OK'}">
          <td style="color: green">${mem.status}</td>
</c:if>

                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
