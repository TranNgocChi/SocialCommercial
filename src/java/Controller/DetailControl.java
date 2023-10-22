/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.ProductDAO;
import Model.Category;
import Model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "DetailControl", urlPatterns = {"/detail"})

public class DetailControl extends HttpServlet {
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addtocart</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addtocart at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        Object id = request.getParameter("pid");
        Object idaddtocart = request.getAttribute("pid");
        if(id==null){
             ProductDAO dao = new ProductDAO();
        Object cid = dao.getProductbyCId(idaddtocart);
        Product p = dao.getProductsbyID(idaddtocart);
        List<Category> list = dao.getAllCategory();
        List<Product> related = dao.getProductsbyCID(cid);
        request.setAttribute("listC", list);
        request.setAttribute("related", related);
        request.setAttribute("detail", p);
       
        request.getRequestDispatcher("product_detail.jsp").forward(request, response);  
        }
        else{
        ProductDAO dao = new ProductDAO();
        Object cid = dao.getProductbyCId(id);
        Product p = dao.getProductsbyID(id);
        List<Category> list = dao.getAllCategory();
        List<Product> related = dao.getProductsbyCID(cid);
        request.setAttribute("listC", list);
        request.setAttribute("related", related);
        request.setAttribute("detail", p);
       
        request.getRequestDispatcher("product_detail.jsp").forward(request, response);
        }
        
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
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

