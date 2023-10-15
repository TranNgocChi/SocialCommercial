/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import connectSQLServer.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class ThanhtoanDAO {
    private Connection connection;

    public ThanhtoanDAO() {
        connection = DatabaseConnection.getConnection();
    }
    public Object addNewOrderandGetThisOther(Object iduser,Object idseller,String fullname,String phone,double totalorder,String town,String location){
        try {
            // Lấy ngày hiện tại
java.util.Date currentDate = new java.util.Date();

// Chuyển ngày hiện tại thành kiểu java.sql.Date
java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
            String sql="INSERT INTO  [Order](customer_id,seller_id,fullname,phone,order_total,order_date,order_town,order_location)\n" +
"                    VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setObject(1, iduser);
            ps.setObject(2, idseller);
            ps.setString(3, fullname);
            ps.setString(4, phone);
            ps.setDouble(5, totalorder);
            ps.setDate(6, sqlDate);
            ps.setString(7, town);
            ps.setString(8, location);
            ps.execute();
            String sql1="SELECT *\n" +
"  FROM [SWP391].[dbo].[Order]\n" +
"  WHERE customer_id=? AND seller_id=? AND fullname=? AND phone=? AND order_total=? AND order_date=?";
            PreparedStatement ps1=connection.prepareStatement(sql1);
            ps1.setObject(1, iduser);
            ps1.setObject(2, idseller);
            ps1.setString(3, fullname);
            ps1.setString(4, phone);
            ps1.setDouble(5, totalorder);
            ps1.setDate(6, sqlDate);
            ResultSet rs=ps1.executeQuery();
            rs.next();
            Object idorder=rs.getObject(1);
            return idorder;
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ThanhtoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
                
        
    }  public void addNewOrderDetail(Object idorder,Object productid,int quantity,double price){
            
        try {
            String sql="Insert INTO OrderDetail(order_id,product_id,quantity,price)\n" +
                    "Values(?,?,?,?)";
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setObject(1, idorder);
            ps.setObject(2, productid);
            ps.setInt(3, quantity);
        ps.setDouble(4, price);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ThanhtoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
  
    }
    public Object get1(Object iduser,Object idseller,String fullname,String phone,Double totalorder){
        try {
            String sql1="SELECT *\n" +
                    "  FROM [SWP391].[dbo].[Order]\n" +
                    "  WHERE customer_id=?,seller_id=?,fullname=?,phone=?";
            PreparedStatement ps1=connection.prepareStatement(sql1);
            ps1.setObject(1, iduser);
            ps1.setObject(2, idseller);
            ps1.setString(3, fullname);
            ps1.setString(4, phone);
           ResultSet rs=ps1.executeQuery();
            rs.next();
            Object idorder=rs.getObject(1);
            return idorder;
        } catch (SQLException ex) {
            Logger.getLogger(ThanhtoanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void main(String[] args) {
        ThanhtoanDAO dao=new ThanhtoanDAO();
//        Object id=dao.addNewOrderandGetThisOther("C23C4CD4-ADA9-436B-8A02-1D992ED07104", "C23C4CD4-ADA9-436B-8A02-1D992ED07104",
//                "q", "v", 0, "a", "c");
Object id=dao.get("C23C4CD4-ADA9-436B-8A02-1D992ED07104", "C23C4CD4-ADA9-436B-8A02-1D992ED07104", "q", "v");
        System.out.println(id);
    }
    
    
}
