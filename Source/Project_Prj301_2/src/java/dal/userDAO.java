/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.User;
import context.DBContext;
import jakarta.servlet.http.HttpServlet;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class userDAO extends DBContext{
     public ArrayList<User> getListUsers() {
        ArrayList<User> list = new ArrayList<>();

        try {
            String str = "Select * from Users  ";
            PreparedStatement pstm = connection.prepareStatement(str);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add( new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }
     
     
     
}
