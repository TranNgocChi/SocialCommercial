package Controller;

import DAO.NotificationDAO;
import DAO.UserDAO;
import Model.Notification;
import Model.User;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})

public class LoginServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        UserDAO dao = new UserDAO();
        String name = request.getParameter("username");
        String pass = request.getParameter("pass");
        String img = "";
        User user = new User();
        user = dao.get(name, pass);
            
        if (user != null) {
            for (User cus : dao.getAllUsers()) {
                if (cus.getId().equals(user.getId())) {
                    img = cus.getImage();
                    break;
                }
            }            
            
            NotificationDAO noti = new NotificationDAO();
            List<Notification> listNotificationUser = new ArrayList<>();
            
            for(Notification notify : noti.getAllNotifications()){
                if(notify.getUser_id().toString().toLowerCase().equals(user.getId().toString().toLowerCase())){
                    listNotificationUser.add(notify);
                }
            }
            Collections.sort(listNotificationUser, (notification1, notification2)
            -> notification1.getNotification_date().compareTo(notification2.getNotification_date()));

            int countNotify = 0;
            countNotify=listNotificationUser.size();
            
            HttpSession session = request.getSession();
            session.setAttribute("id", user.getId());
            session.setAttribute("name", user.getName());
            session.setAttribute("role", user.getRoleid());
            session.setAttribute("img", img);
            session.setAttribute("listNotificationUser", listNotificationUser);
            request.setAttribute("countNotify", countNotify);
            response.sendRedirect(request.getContextPath());


        } else {
            HttpSession session = request.getSession();
            session.setAttribute("msg", "Tên đăng nhập hoặc mật khẩu sai.");
            response.sendRedirect("login");
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