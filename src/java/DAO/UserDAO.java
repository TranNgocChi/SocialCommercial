
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
                int roleId = rs.getInt(11);

                User user = new User(id, name, pass, email, roleId);
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
                int roleId = rs.getInt(11);

                User user = new User(id, name, email, roleId);
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null; // Trả về null nếu không tìm thấy user hoặc xảy ra lỗi
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
    
    public void EditUser(String name, String email, String number, String country
    , String province, String district, String town, String location, String image, Object id) {
        Connection cnt = null;
        PreparedStatement stm = null;
        try {
            String sql = "UPDATE AppUser SET name = ?,"
                    + " email = ?, number = ?,"
                    + "country = ?, province = ?,"
                    + "district = ?, town = ?," 
                    + "location = ?, image = ? WHERE id = ?";

            cnt = DatabaseConnection.getConnection();
            stm = cnt.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, email);
            stm.setString(3, number);
            stm.setString(4, country);
            stm.setString(5, province);
            stm.setString(6, district);
            stm.setString(7, town);
            stm.setString(8, location);
            stm.setString(9, image);
            stm.setObject(10, id);

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

    public static void main(String[] args) {
        UserDAO userdao = new UserDAO();
        userdao.EditUser("asd", "", "", "", "", "", 
                "", "", "", "3393C2BB-1630-4184-AD67-9A789CF770DE");
        System.out.println(user);
    }
}