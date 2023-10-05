package DAO;

import Model.Category;
import connectSQLServer.DatabaseConnection;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.Random;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
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
                UUID id = UUID.fromString(rs.getString(1));
                String name = rs.getString(2);
                String email = rs.getString(4);
                String phone = rs.getString(5);
                String country = rs.getString(6);
                String province = rs.getString(7);
                String district = rs.getString(8);
                String town = rs.getString(9);
                String location = rs.getString(10);
                int roleid = rs.getInt(11);
                String image = rs.getString(11);
                User user = new User(id, name, email, phone, country, province, district, town, location, roleid, image);
                list.add(user);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void delete(String id) {
        try {
            String sql = "DELETE FROM AppUser WHERE id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

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
    
    public ArrayList<User> getRandomUsers(Object sessionUserId) {
    UserDAO manageUser = new UserDAO();                
    ArrayList<User> allUsers = manageUser.getAllUsers();
    ArrayList<User> fiveUsers = new ArrayList<>();

    Random rand = new Random();

    if (sessionUserId instanceof Object) {

        for (int i = 0; i < 5 && !allUsers.isEmpty(); i++) {
            int randomIndex = rand.nextInt(allUsers.size());
            User randomUser = allUsers.get(randomIndex);

            // Kiểm tra xem ID của người dùng ngẫu nhiên đã tồn tại trong sessionUserId chưa
            if (sessionUserId != randomUser.getId()) {
                fiveUsers.add(randomUser);
            }

            allUsers.remove(randomIndex);
        }
    } else {
        System.out.println("Error");
    }

    return fiveUsers;
}

    public static void main(String[] args) {
        AdminDAO userdao = new AdminDAO();
        userdao.delete("3D561143-E8C6-44D1-A859-E8796498A5A8");
    }
}
