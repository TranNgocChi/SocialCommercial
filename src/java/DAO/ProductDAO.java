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
public class ProductDAO extends DatabaseConnection{
    private Connection connection;
    
    public ProductDAO() {
        connection = DatabaseConnection.getConnection();
    }
    
    public List<Product> getAllProducts(){
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
    
    public List<Product> getTop8(){
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
    
    public List<Product> getNext8Products(int amount){
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * \n" +
                    "FROM ProductInfo\n" +
                    "ORDER BY product_id\n" +
                    "OFFSET ? ROWS\n" +
                    "FETCH NEXT 8 ROWS ONLY;";

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
    
    public List<Category> getAllCategory(){
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
    
    public List<Product> getProductsbyCID(Object cid){
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM ProductInfo\n" +
                    "  WHERE type_id = ?";

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
    
    public Product getProductsbyID(Object id){
        String sql = "SELECT * FROM ProductInfo\n" +
                    "  WHERE product_id = ?";

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
    
    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO(); //khoi tao doi tuong dao
        List<Category> list = dao.getAllCategory();
        for (Category o : list){
            System.out.println(o);
        }
        Product product = dao.getProductsbyID("05F5E5F3-B59E-4AEB-9DE6-160DF06346B7");
        if (product != null) {
        System.out.println("Sản phẩm đã được tìm thấy:");
        System.out.println("ID: " + product.getProductId());
        System.out.println("Tên sản phẩm: " + product.getProductName());
        System.out.println("Ảnh sản phẩm: " + product.getProductImage());
        System.out.println("Giá sản phẩm: " + product.getProductPrice());
        System.out.println("Mô tả sản phẩm: " + product.getProductDescription());
    } else {
        System.out.println("Sản phẩm không tồn tại hoặc có lỗi xảy ra khi truy vấn.");
    }
    }
}
