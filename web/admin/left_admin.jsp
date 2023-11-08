<%-- 
    Document   : left_admin
    Created on : Oct 7, 2023, 9:32:37 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link " href="admin.jsp">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <!-- Start Management Member Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#member-tables-nav" data-bs-toggle="collapse" href="#member-tables-nav">
                <i class="bi bi-person-fill"></i><span>Quản lý thành viên</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="member-tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="getListUser">
                        <i class="bi bi-circle"></i><span>Danh sách thành viên</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Management Member Nav -->


        <!-- Start Role Management Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#role-tables-nav" data-bs-toggle="collapse" href="#role-tables-nav">
                <i class="bi bi-key"></i><span>Quản lý vai trò</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="role-tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="manageshipper">
                        <i class="bi bi-circle"></i><span>Quản lí tài khoản vận chuyển</span>
                    </a>
                </li>
                <li>
                    <a href="getRequestRole">
                        <i class="bi bi-circle"></i><span>Nâng cấp vai trò</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Role Management Nav -->

        <!-- Start Category Management Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#category-tables-nav" data-bs-toggle="collapse" href="#category-tables-nav">
                <i class="bi bi-pen"></i><span>Quản lý danh mục sản phẩm</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="category-tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="managecategory">
                        <i class="bi bi-circle"></i><span>Danh mục sản phẩm</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Category Management Nav -->
        
        <!-- Start Product Management Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#product-tables-nav" data-bs-toggle="collapse" href="#product-tables-nav">
                <i class="bi bi-basket2"></i><span>Quản lý sản phẩm</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="product-tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="list_product.jsp">
                        <i class="bi bi-circle"></i><span>Danh sách sản phẩm</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Product Management Nav -->

         <!-- Start Post Management Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#post-management-nav" data-bs-toggle="collapse" href="#post-management-nav">
                <i class="bi bi-newspaper"></i><span>Quản lý bài post</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="post-management-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="create_post.jsp">
                        <i class="bi bi-circle"></i><span>Tạo bài post</span>
                    </a>
                </li>
                <li>
                    <a href="allposts">
                        <i class="bi bi-circle"></i><span>Danh sách bài post</span>
                    </a>
                </li>
            </ul>
        </li>
       

        
        
        
</aside><!-- End Sidebar-->
