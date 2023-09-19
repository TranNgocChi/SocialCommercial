
package Controller;

import DAO.UserDAO;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author STUDENT
 */
public class LoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO dao = new UserDAO();
        String name = request.getParameter("username");
        String pass = request.getParameter("pass");
        User user = new User();
        user = dao.get(name, pass);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("id", user.getId());
            session.setAttribute("name", user.getName());
            session.setAttribute("role", user.getRoleid());
            response.sendRedirect("home.jsp");
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("msg", "TEN HOAC MAT KHAU SAI !!!");
            response.sendRedirect("login.jsp");
        }
    }

}