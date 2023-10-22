package DAO;

import Model.Category;
import connectSQLServer.DatabaseConnection;
import Model.User;
import Model.requestOfUser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;


public class AdminDAO extends DatabaseConnection {

    private Connection connection;

    public AdminDAO() {
        connection = DatabaseConnection.getConnection();
    }

    public ArrayList<User> getAll() {
        try {
            String sql = "  SELECT * FROM [SWP391].[dbo].[AppUser]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<User> list = new ArrayList<>();
            while (rs.next()) {
                Object id = rs.getObject(1);
                String name = rs.getString(2);
                String email = rs.getString(4);
                String phone = rs.getString(5);
//                String country = rs.getString(6);
//                String province = rs.getString(7);
//                String district = rs.getString(8);
//                String town = rs.getString(9);
//                String location = rs.getString(10);
                int roleid = rs.getInt(6);
                String image = rs.getString(7);
                User user1 = new User(id, name, email, phone, image, roleid);
                list.add(user1);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void taoacountshipper(String name,String pass,int role){
        try {
            String sql="INSERT INTO AppUser(name,password,role_id) Values(?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setInt(3, role);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

//    public void delete(Object id) {
//        try {
//            String sql = "DELETE FROM AppUser WHERE id=?;\n" +
//"DELETE FROM UserMessage WHERE receiver_id=? \n" +
//"OR sender_id=?;
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setObject(1, id);ps.setObject(2, id);ps.setObject(3, id);
//            ps.execute();
//        } catch (SQLException ex) {
//            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }

    public ArrayList<Category> getAllCategory() {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[ProductCategory]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Category> listcate = new ArrayList<>();
            while (rs.next()) {
                UUID id = UUID.fromString(rs.getString(1));
                String type = rs.getString(2);

                Category cate = new Category(id, type);
                listcate.add(cate);
            }
            return listcate;
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void addcategory(String type) {
        try {
            String sql = "INSERT INTO ProductCategory(type) Values(?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, type);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deletecategory(String id) {
        try {
            String sql = "DELETE FROM ProductCategory WHERE id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void setSeller(Object userid,String status) {
        try {
            String sql = "Update requestSetRole SET status=? WHERE user_id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(2, userid);
            ps.setString(1, status);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<requestOfUser> getAllRequestRole() {
    try {
        String sql = "SELECT * FROM [SWP391].[dbo].[requestSetRole]";
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<requestOfUser> list = new ArrayList<>();
        while (rs.next()) {
            Object id = rs.getObject(1);
            Object userid = rs.getObject(2);
            String email = rs.getString(3);
            String fullname = rs.getString(4);
            String shopname = rs.getString(5);
            Object commo = rs.getObject(6);

            // Debugging statement
            String namecate = getTenDanhMucBangID(commo);
            String address = rs.getString(7);
            String phone = rs.getString(8);
            String status = rs.getString(9);

            requestOfUser req = new requestOfUser(id, userid, email, fullname, shopname, commo, address, phone, namecate, status);
            list.add(req);
        }
        return list;
    } catch (SQLException ex) {
        Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
}

     public String getTenDanhMucBangID(Object id){
        try {
            String sql="SELECT *\n" +
                    "  FROM [SWP391].[dbo].[ProductCategory]\n" +
                    "  Where id=?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            String tendanhmuc=rs.getString(2);
            return tendanhmuc;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public void uprole(Object id,Object userid){
        try {
            String sql="UPDATE\n" +
                    "   [SWP391].[dbo].[requestSetRole]\n" +
                    "   SET status=?\n" +
                    "   WHERE id=?;\n" +
                    "   UPDATE\n" +
                    "   [SWP391].[dbo].[AppUser]\n" +
                    "   SET role_id=3\n" +
                    "   WHERE id=?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "OK");
            ps.setObject(2, id);
            ps.setObject(3, userid);
                    ps.execute();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
     public void rejectuprole(Object id,Object userid){
        try {
            String sql="UPDATE\n" +
                    "   [SWP391].[dbo].[requestSetRole]\n" +
                    "   SET status=?\n" +
                    "   WHERE id=?;\n";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "NOT OK");
            ps.setObject(2, id);
                    ps.execute();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
     }


   public static void main(String[] args) {
    AdminDAO userdao = new AdminDAO();
   

    ArrayList<requestOfUser> list = new ArrayList<>();
    list = userdao.getAllRequestRole();
    System.out.println(list);
}

}
