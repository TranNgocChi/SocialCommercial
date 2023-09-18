
import context.DBContext;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ADMIN
 */
public class TestDB {
    public static void main(String[] args) {
        DBContext db = new DBContext();
        try {
            Connection con = db.getConnection();
        } catch (Exception ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
