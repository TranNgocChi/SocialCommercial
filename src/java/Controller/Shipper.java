
package Controller;

import DAO.AdminDAO;
import Model.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Shipper", urlPatterns = {"/Shipper"})
public class Shipper extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AdminDAO manage = new AdminDAO();
        
        request.setAttribute("allOfOrders", manage.getAllOrders());
        request.getRequestDispatcher("shipper.jsp").forward(request, response);
    }

}
