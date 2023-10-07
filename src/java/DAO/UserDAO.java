
package DAO;

import connectSQLServer.DatabaseConnection;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class UserDAO extends DatabaseConnection {

    private Connection connection;

    public UserDAO() {
        connection = DatabaseConnection.getConnection();
    }
    public User get(String name, String password) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE name=? AND password=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Object id = rs.getObject(1);
                String userName = rs.getString(2);
                String userPass = rs.getString(3);
                String email = rs.getString(4);
                int roleId = rs.getInt(6);

                User user = new User(id, name, pass, email, roleId);
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null; // Tr? v? null n?u không tìm th?y user ho?c x?y ra l?i
    }
       public void setpassbyname(String name,String pass) {
        try {
            String sql = "Update AppUser\n"
                    + "SET password=? "
                    + "WHERE name=?";
            PreparedStatement ps = connection.prepareStatement(sql);
             ps.setString(1, pass);
            ps.setString(2, name);
            
             ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        
    }
    public User getbyemail(String email) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE email=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Object id = rs.getObject(1);
                String userName = rs.getString("name");
                int roleId = rs.getInt(6);

                User user = new User(id, userName, email, roleId);
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null; // Tr? v? null n?u không tìm th?y user ho?c x?y ra l?i
    }


    public User checkdup(String name) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE name=? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Object id = rs.getObject(1);
                String userName = rs.getString(2);
                String userPass = rs.getString(3);
                String email = rs.getString(4);
                int roleId = rs.getInt(6);

                User user = new User(id, name, email, roleId);
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null; // Tr? v? null n?u không tìm th?y user ho?c x?y ra l?i
    }

    public boolean register(String name, String pass, String email) {
        try {
            String sql = "INSERT INTO AppUser (name, password, email, role_id) VALUES (?,?,?,2);";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, email);
            UserDAO dao = new UserDAO();
            if (dao.checkdup(name) != null) {
                return false;
            } else {
                ps.execute();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }
    
    public void EditUser( String number, String image, String fullName,String gender
    , String statusNow, String school, String favour, String bio, Object id) {
        Connection cnt = null;
        PreparedStatement stm = null;
        try {
            String sql = "UPDATE AppUser SET number = ?,"
                    + " image = ?, fullName = ?,"
                    + "gender = ?, statusNow = ?,"
                    + "school = ?, favour = ?," 
                    + "bio = ? WHERE id = ?";

            cnt = DatabaseConnection.getConnection();
            stm = cnt.prepareStatement(sql);
            stm.setString(1, number);
            stm.setString(2, image);
            stm.setString(3, fullName);
            stm.setString(4, gender);
            stm.setString(5, statusNow);
            stm.setString(6, school);
            stm.setString(7, favour);
            stm.setString(8, bio);
            stm.setObject(9, id);

            int rowsUpdated = stm.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Updated successfully.");
            } else {
                System.out.println("Not found with the provided ID.");
            }
        } catch (SQLException e) {
            System.out.println("Error occurred while updating: " + e.getMessage());
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (cnt != null) {
                    cnt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public void EditUserSubstractImage( String number, String fullName,String gender
    , String statusNow, String school, String favour, String bio, Object id) {
        Connection cnt = null;
        PreparedStatement stm = null;
        try {
            String sql = "UPDATE AppUser SET number = ?,"
                    + " fullName = ?,"
                    + "gender = ?, statusNow = ?,"
                    + "school = ?, favour = ?," 
                    + "bio = ? WHERE id = ?";

            cnt = DatabaseConnection.getConnection();
            stm = cnt.prepareStatement(sql);
            stm.setString(1, number);
            stm.setString(2, fullName);
            stm.setString(3, gender);
            stm.setString(4, statusNow);
            stm.setString(5, school);
            stm.setString(6, favour);
            stm.setString(7, bio);
            stm.setObject(8, id);

            int rowsUpdated = stm.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Updated successfully.");
            } else {
                System.out.println("Not found with the provided ID.");
            }
        } catch (SQLException e) {
            System.out.println("Error occurred while updating: " + e.getMessage());
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (cnt != null) {
                    cnt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public ArrayList<User> getAllUsers() {
        try {
            String sql = "  SELECT * FROM [SWP391].[dbo].[AppUser]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<User> list = new ArrayList<>();
            while (rs.next()) {
                Object id = rs.getObject(1);
                String phone = rs.getString(5);
                int roleid = rs.getInt(6);
                String image = rs.getString(7);
                String fullName = rs.getString(8);
                String gender = rs.getString(9);
                String statusNow = rs.getString(10);
                String school = rs.getString(11);
                String favour = rs.getString(12);
                String bio = rs.getString(13);

                User user = new User(id, phone, image,roleid, fullName,gender,statusNow,
                school,favour,bio);
                list.add(user);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        UserDAO userdao = new UserDAO();
        User user=userdao.getbyemail("vinh1");
        System.out.println(user);
    }
}