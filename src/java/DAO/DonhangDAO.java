/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Donhang;
import connectSQLServer.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class DonhangDAO {
    private Connection connection;

    public DonhangDAO() {
        connection = DatabaseConnection.getConnection();
    }
    public ArrayList<Donhang> getdonhangOfUser(Object iduser){
        try {
            String sql="SELECT o.id,o.order_total,o.customer_id,o.seller_id,o.fullname,o.phone,o.order_date,o.order_town,o.order_location,o.status\n" +
",d.id,d.product_id,d.quantity,d.price\n" +
"  FROM [SWP391].[dbo].[Order] AS o\n" +
"  JOIN OrderDetail AS d ON d.order_id=o.id\n" +
"  WHERE customer_id=?\n" +
"  Order By o.id\n" +
"  ";
            ArrayList<Donhang> list=new ArrayList<>();
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setObject(1, iduser);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                Object id=rs.getObject(1);
                Double total=rs.getDouble(2);
                Object sellerid=rs.getObject(4);
                String fullname=rs.getString(5);
                String phone=rs.getString(6);
                Date date=rs.getDate(7);
                String town =rs.getString(8);
                String location=rs.getString(9);
                String status=rs.getString(10);
                Object productid=rs.getObject(12);
                int quantity=rs.getInt(13);
                double price=rs.getDouble(14);
                Donhang donhang=new Donhang(id, total, iduser, sellerid, fullname, phone, date, town, location, status, productid, quantity, price);
                list.add(donhang);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(DonhangDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
    public static void main(String[] args) {
        DonhangDAO dao=new DonhangDAO();
        ArrayList<Donhang> list=new ArrayList<>();
        list=dao.getdonhangOfUser("F122C4A5-C570-46D8-9D60-61C01BC480D6");
        System.out.println(list);
    }
}
