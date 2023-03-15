/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.author;
import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class AuthorDAO extends DBContext {

    public ArrayList<author> getListauthor(String couserid) {
        ArrayList<author> list = new ArrayList<>();

        try {
            String str = " select * from authors , Couser "
                    + "Where authors.Couserid = ? ";
            PreparedStatement pstm = connection.prepareStatement(str);
            pstm.setString(1, couserid);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new author(rs.getString(1), rs.getDate(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

}
