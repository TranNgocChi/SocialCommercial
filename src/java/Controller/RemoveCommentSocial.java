
package Controller;

import DAO.CommentSocialDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "RemoveCommentSocial", urlPatterns = {"/RemoveCommentSocial"})
public class RemoveCommentSocial extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Object id  = request.getParameter("id");
        Object post_id = request.getParameter("post_id");
        Object fullName = request.getParameter("fullName");
        CommentSocialDAO comment = new CommentSocialDAO();
        comment.deleteCommentSocial(id);
        response.sendRedirect("PostDetail?post_id="+post_id+ "&fullName="+fullName);
    }

}
