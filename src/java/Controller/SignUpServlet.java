
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
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        String pass1 = request.getParameter("pass1");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        if (pass.equals(pass1)) {
//        PrintWriter out = response.getWriter();
//        out.print(username+" "+"Pass:"+ pass +"Pass1:"+pass1+"email:" +email);
            User user = new User(username, pass, email, 2);
            UserDAO userdao = new UserDAO();
            if (userdao.checkdup(username) == null) {
                userdao.register(username, pass, email);
                request.setAttribute("msg", "ĐĂNG KÍ THÀNH CÔNG, MỜI BẠN ĐĂNG NHẬP");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                session.setAttribute("msg", "TRÙNG USERNAME ĐÃ CÓ TRONG HỆ THỐNG!!! VUI LÒNG ĐĂNG KÍ TÊN KHÁC");
                response.sendRedirect("login.jsp");
            }
        } else {
            session.setAttribute("msg", "PASSWORD BẠN NHẬP KHÔNG GIỐNG NHAU !!! MỜI BẠN ĐĂNG KÍ LẠI");
            response.sendRedirect("login.jsp");

        }
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