/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connectSQLServer.DatabaseConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Chart;
import Model.ChartStar;
import Model.Feedback;
import java.sql.Connection;
import java.util.Date;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FeedbackDAO extends DatabaseConnection {

    private Connection connection;

    public FeedbackDAO() {
        connection = DatabaseConnection.getConnection();
    }

    public List<Feedback> getAllFeedback() {
        List<Feedback> list = new ArrayList<>();
        String sql = "  select f.*, p.product_name\n"
                + " from Feedback f join ProductInfo p\n"
                + "on f.product_id = p.product_id";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Object id = resultSet.getObject(1);
                int rated_star = resultSet.getInt(2);
                String feedback = resultSet.getString(3);
                String image = resultSet.getString(4);
                boolean status = resultSet.getBoolean(5);
                Object product_id = resultSet.getObject(6);
                Object user_id = resultSet.getObject(7);
                Date date = resultSet.getDate(8);
                String product_name = resultSet.getString(9);

                Feedback f = new Feedback(id, rated_star, feedback, image, status, product_id, user_id, (java.sql.Date) date, product_name);
                list.add(f);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int getTotalFeedback(Object productId) {
        String sql = "select COUNT(feedBack_id) from Feedback where product_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, productId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Feedback> getAllFeedbackByProductId(Object productId) {
        List<Feedback> list = new ArrayList<>();
        String sql = "select * from Feedback where product_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setObject(1, productId);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Object id = resultSet.getObject(1);
                int rated_star = resultSet.getInt(2);
                String feedback = resultSet.getString(3);
                String image = resultSet.getString(4);
                boolean status = resultSet.getBoolean(5);
                Object product_id = resultSet.getObject(6);
                Object user_id = resultSet.getObject(7);
                Date date = resultSet.getDate(8);

                Feedback f = new Feedback(id, rated_star, feedback, image, status, product_id, user_id, (java.sql.Date) date);
                list.add(f);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public void insertFeedback(int star, String subject, String image, boolean i, Object product_id, Object userId) {
        String sql = "INSERT INTO [dbo].[Feedback]\n"
                + "           ([rated_star]\n"
                + "           ,[feedback]\n"
                + "           ,[image]\n"
                + "           ,[status]\n"
                + "           ,[product_id]\n"
                + "           ,[userId])\n"
                + "     VALUES (?,?,?,?,?,?)";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, star);
            statement.setString(2, subject);
            statement.setString(3, image);
            statement.setBoolean(4, i);
            statement.setObject(5, product_id);
            statement.setObject(6, userId);

            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public int getFeedbackStatus(Object product_id, Object userId) {
        try {
            String query = "SELECT status FROM Feedback WHERE product_id = ? AND userId = ?";
            
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setObject(1, product_id);
            preparedStatement.setObject(2, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            
            resultSet.next() ;
            int status = resultSet.getInt("status");
            return status;
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
                
            
        return 0;   
    }
    
    

    public static void main(String[] args) {
        FeedbackDAO feedbackDAO = new FeedbackDAO();
       int check=feedbackDAO.getFeedbackStatus("9ABE62D4-128F-4CD9-89FC-C183035DC40A", "F122C4A5-C570-46D8-9D60-61C01BC480D6");
        System.out.println(check);

    }

}
