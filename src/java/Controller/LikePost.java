
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
        
        Boolean check = false;
        LikeSocialDAO like = new LikeSocialDAO();
        Object fullName = request.getParameter("fullName");
        Object post_id = request.getParameter("post_id");
        Object liker_id = session.getAttribute("id");
        
        for(LikeSocial post  : like.getLikeSocials()){
            if(post_id.toString().toLowerCase().equals(post.getPost_id().toString().toLowerCase())
               && liker_id.toString().toLowerCase().equals(post.getLiker_id().toString().toLowerCase())){
                check = true;
                like.removeLikePost(post_id, liker_id);
                break;
            }
        }
        
        if(check != true){
            like.addLikePost(post_id, liker_id);
        }

        response.sendRedirect("PostDetail?post_id="+post_id+ "&fullName="+fullName); 
        
    }


}
