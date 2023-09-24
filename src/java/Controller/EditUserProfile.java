
package Controller;

import DAO.UserDAO;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "EditUserProfile", urlPatterns = {"/EditUserProfile"})
public class EditUserProfile extends HttpServlet {
    private boolean isImageFile(String filename) {
        String[] allowedExtensions = {".jpg", ".jpeg", ".png", ".gif"};
        for (String extension : allowedExtensions) {
            if (filename.toLowerCase().endsWith(extension)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            HttpSession session=request.getSession();
            Object user_id = session.getAttribute("id");
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String country = request.getParameter("country");
            String province = request.getParameter("province");
            String district = request.getParameter("district");
            String town = request.getParameter("town");
            String location = request.getParameter("location");
            Part imagePart = request.getPart("image");
        
            String realPath = request.getServletContext().getRealPath("/SavedImages");
            String filename = Path.of(imagePart.getSubmittedFileName()).getFileName().toString();
            String image = realPath + "/" + filename;
        
            if(!Files.exists(Path.of(realPath))){
                Files.createDirectory(Path.of(realPath));
            } else {
            }
            if (isImageFile(image)) {
                imagePart.write(image);

                UserDAO edituser = new UserDAO();
                edituser.EditUser(name, email, phone, country, province, district, town, location, image, null);

                request.getRequestDispatcher("user_profile.jsp").forward(request, response);
            } else {
                // Handle invalid file type
                response.setContentType("text/plain");
                response.getWriter().write("Invalid file type. Please upload an image.");
            }
        
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
