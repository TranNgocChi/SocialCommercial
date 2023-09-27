package DAO;

import connectSQLServer.DatabaseConnection;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.UUID;
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

    public User get(String name, String pass) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE name=? AND password=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                UUID id = UUID.fromString(rs.getString(1));
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
        return null; // Trả về null nếu không tìm thấy user hoặc xảy ra lỗi
    }

    public User getbyemail(String email) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE email=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                UUID id = UUID.fromString(rs.getString(1));
                String userName = rs.getString("name");
                int roleId = rs.getInt(6);

                User user = new User(id, userName, email, roleId);
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null; // Trả về null nếu không tìm thấy user hoặc xảy ra lỗi
    }

    public User checkdup(String name) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE name=? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                UUID id = UUID.fromString(rs.getString(1));
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
        return null; // Trả về null nếu không tìm thấy user hoặc xảy ra lỗi
    }

    public User checkdupemail(String name) {
        try {
            String sql = "SELECT * FROM [SWP391].[dbo].[AppUser] WHERE email=? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                UUID id = UUID.fromString(rs.getString(1));
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
        return null; // Trả về null nếu không tìm thấy user hoặc xảy ra lỗi
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

    public static void main(String[] args) {
        UserDAO userdao = new UserDAO();
        User user=userdao.get("admin", "admin");
        System.out.println(user);
    }
}
