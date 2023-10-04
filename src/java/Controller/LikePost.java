
package Controller;

import DAO.LikeSocialDAO;
import Model.LikeSocial;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet(name = "LikePost", urlPatterns = {"/LikePost"})
public class LikePost extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        
        LikeSocialDAO like = new LikeSocialDAO();
        String like_icon = "<i class=\"far fa-heart\"></i>";
        Object fullName = request.getParameter("fullName");
        Object post_id = request.getParameter("post_id");
        Object liker_id = session.getAttribute("id");

        like.addLikePost(post_id, liker_id);


        request.setAttribute("like_icon", like_icon);
        request.getRequestDispatcher("post_detail.jsp?post_id="+post_id+ "&fullName="+fullName).forward(request, response);;
        
    }


}
