/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Category;
import Model.Product;
import connectSQLServer.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends DatabaseConnection {

    private Connection connection;

    public ProductDAO() {
        connection = DatabaseConnection.getConnection();
    }

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM ProductInfo";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                products.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public ArrayList<Product> getAllProductsofUser(Object id) {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM ProductInfo Where seller_id=?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                products.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public ArrayList<Product> getTop3ProductsofUser(Object id) {
        ArrayList<Product> products = new ArrayList<>();
        String sql = "SELECT TOP (3) [product_id]\n"
                + "      ,[seller_id]\n"
                + "      ,[type_id]\n"
                + "      ,[product_name]\n"
                + "      ,[product_image]\n"
                + "      ,[product_available]\n"
                + "      ,[product_sales]\n"
                + "      ,[product_price]\n"
                + "      ,[product_voucher]\n"
                + "      ,[product_description]\n"
                + "  FROM [SWP391].[dbo].[ProductInfo]\n"
                + "  WHERE seller_id=?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                products.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public String getTenDanhMucBangID(Object id) {
        try {
            String sql = "SELECT *\n"
                    + "  FROM [SWP391].[dbo].[ProductCategory]\n"
                    + "  Where id=?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            String tendanhmuc = rs.getString(2);
            return tendanhmuc;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Object getTenDanhMuccuanguoiban(Object id) {
        try {
            String sql = "SELECT \n"
                    + "      \n"
                    + "      [commoditiesSector]\n"
                    + "    \n"
                    + "  FROM [SWP391].[dbo].[requestSetRole]\n"
                    + "  WHERE user_id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Object tendanhmuc = rs.getObject(1);
            return tendanhmuc;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String getshopnamecuanguoiban(Object id) {
        try {
            String sql = "SELECT \n"
                    + "      \n"
                    + "      [shopName]\n"
                    + "    \n"
                    + "  FROM [SWP391].[dbo].[requestSetRole]\n"
                    + "  WHERE user_id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            String tendanhmuc = rs.getString(1);
            return tendanhmuc;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM ProductCategory";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object cid = resultSet.getObject(1);
                String type = resultSet.getString(2);

                Category category = new Category(cid, type);
                list.add(category);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductsbyCID(Object cid) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM ProductInfo\n"
                + "  WHERE type_id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, cid);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                products.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public Product getProductsbyID(Object id) {
        String sql = "SELECT * FROM ProductInfo\n"
                + "  WHERE product_id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, id);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                return new Product(productId, productName, productImage, productPrice, productDescription);

            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }
    
    public List<Product> getTop8() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT Top 8 * FROM ProductInfo";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                products.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }

    public List<Product> getNext8Products(int amount) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * \n"
                + "FROM ProductInfo\n"
                + "ORDER BY product_id\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT 8 ROWS ONLY;";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, amount);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                products.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products;
    }
    
    public List<Product> searchByName(String txtSearch){
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM ProductInfo\n" +
                    "WHERE product_name like ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1,"%"+ txtSearch +"%");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Object productId = resultSet.getObject(1);
                String productName = resultSet.getString(4);
                String productImage = resultSet.getString(5);
                double productPrice = resultSet.getDouble(8);
                String productDescription = resultSet.getString(10);

                Product product = new Product(productId, productName, productImage, productPrice, productDescription);
                list.add(product);
            }
            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void xoasanpham(Object id) {
        try {
            String sql = "DELETE\n"
                    + "FROM [SWP391].[dbo].[ProductInfo]\n"
                    + "WHERE product_id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(1, id);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void themsanpham(Object seller_id, Object type_id, String productname, String productimg,
            int productavai, double price, String des) {
        try {
            String sql = "INSERT INTO ProductInfo\n"
                    + "      (seller_id\n"
                    + "      ,type_id\n"
                    + "      ,product_name\n"
                    + "      ,product_image\n"
                    + "      ,product_available\n"
                    + "      ,product_price\n"
                    + "      ,product_description)\n"
                    + "Values(?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setObject(1, seller_id);
            ps.setObject(2, type_id);
            ps.setString(3, productname);
            ps.setString(4, productimg);
            ps.setInt(5, productavai);
            ps.setDouble(6, price);
            ps.setString(7, des);
            ps.execute();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO(); //khoi tao doi tuong dao
        dao.themsanpham("3897A0A3-0822-4464-B3E2-AD272E42E7EA", "1818E9A8-52CD-4538-9512-AD9234BD1EEA", "bàn ?n", "ss", 0, 0, "v");

    }
}
