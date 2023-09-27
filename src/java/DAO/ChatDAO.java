/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connectSQLServer.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class ChatDAO extends DatabaseConnection {

    private Connection connection;

    public ChatDAO() {
        connection = DatabaseConnection.getConnection();
    }
  public ArrayList<String> getlistnguoinhantin(UUID id){
    try {
        ArrayList<String> list = new ArrayList<>();
        String sql = "SELECT DISTINCT AppUser.name AS [Tên Người Nhắn Tin]\n" +
                     "FROM AppUser\n" +
                     "INNER JOIN UserMessage AS mess\n" +
                     "On AppUser.id = mess.receiver_id OR AppUser.id = mess.sender_id\n" +
                     "WHERE AppUser.id <> ?\n" +
                     "AND (mess.sender_id = ? OR mess.receiver_id = ?)";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setObject(1, id);
        ps.setObject(2, id); // Gán giá trị của id cho tham số thứ hai
        ps.setObject(3, id); // Gán giá trị của id cho tham số thứ ba
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            list.add(rs.getString(1));
        }
        return list;
    } catch (SQLException ex) {
        Logger.getLogger(ChatDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
}

    
    public static void main(String[] args) {
        ChatDAO chat=new ChatDAO();
        ArrayList<String> list=new ArrayList<>();
            UUID id = UUID.fromString("91605443-D6CB-414D-8E67-224B552FAC24");

        list=chat.getlistnguoinhantin(id);
        System.out.println(list);
        
    }
}

