/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "SellerRegisterServlet", urlPatterns = {"/seller_register"})
public class SellerRegisterServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("seller_form.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String email = request.getParameter("email");
            String fullName = request.getParameter("fullname");
            String shopName = request.getParameter("shopname");
            String sector = request.getParameter("sector");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            
            request.setAttribute("email", email);
            request.setAttribute("fullname", fullName);
            request.setAttribute("shopname", shopName);
            request.setAttribute("sector", sector);
            request.setAttribute("address", address);
            request.setAttribute("phone", phone);
            request.getRequestDispatcher("seller_form.jsp").forward(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
