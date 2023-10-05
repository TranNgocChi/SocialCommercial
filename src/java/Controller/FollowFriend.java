
package Controller;

import DAO.FollowUserDAO;
import Model.FollowUser;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "FollowFriend", urlPatterns = {"/FollowFriend"})
public class FollowFriend extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        
        Boolean check = false;
        Object my_id = session.getAttribute("id");
        Object friend_id = request.getParameter("friend_id");
        
        FollowUserDAO manageFl = new FollowUserDAO();
        for(FollowUser follow : manageFl.getFollowUsers()){
            if(my_id.toString().toLowerCase().equals(follow.getFollower().toString().toLowerCase()) &&
            friend_id.toString().toLowerCase().equals(follow.getFollowing().toString().toLowerCase())){
                check = true;
                manageFl.removeFollow(my_id, friend_id);
                break;
            }
        }
        if(check == false){
            manageFl.addFollowUser(my_id, friend_id);
        }
        
        response.sendRedirect("UserProfileSocial?user_id="+friend_id); 
    }

}
