
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
                String location= rs.getString(10);
                int roleid = rs.getInt(11);
                
                User user=new User(id, name, email, phone, country, province, district, town, location, roleid);
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
          String sql="DELETE FROM AppUser WHERE id=?";
          PreparedStatement ps = connection.prepareStatement(sql);
          ps.setString(1, id);
          ps.execute();
      } catch (SQLException ex) {
          Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
  }
    public static void main(String[] args) {
          AdminDAO userdao=new AdminDAO();
           userdao.delete("3D561143-E8C6-44D1-A859-E8796498A5A8");
    }
}