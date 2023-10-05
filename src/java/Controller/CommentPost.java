
package Controller;

import DAO.CommentSocialDAO;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "CommentPost", urlPatterns = {"/CommentPost"})
public class CommentPost extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        Object commentor_id = session.getAttribute("id");
        Object post_id = request.getParameter("post_id");
        Object fullName = request.getParameter("fullName");
        String comment_user = request.getParameter("comment");
        LocalDateTime currentDateTime = LocalDateTime.now();
        Date currentDate = java.util.Date.from(currentDateTime.atZone(ZoneId.systemDefault()).toInstant());
        
        CommentSocialDAO comment = new CommentSocialDAO();
        if(comment_user!=null){
            comment.addCommentSocial(post_id, commentor_id, comment_user, currentDate);
        }
        response.sendRedirect("PostDetail?post_id="+post_id+ "&fullName="+fullName);        

    }

}
