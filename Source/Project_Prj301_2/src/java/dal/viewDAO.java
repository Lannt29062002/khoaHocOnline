/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.User;
import Model.view;
import com.sun.crypto.provider.RC2Cipher;
import context.DBContext;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class viewDAO extends DBContext {

    public ArrayList<view> getListview() {
        ArrayList<view> list = new ArrayList<>();

        try {
            String str = " Select * from viewcouser  ";
            PreparedStatement pstm = connection.prepareStatement(str);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new view(rs.getString(1), rs.getInt(2)));
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public void updateview(String Couserid, int view) {
        try {
            String strUpdate = " Update viewcouser "
                    + "set viewnumber = ? "
                    + "Where Couserid = ? ";
            PreparedStatement pstm = connection.prepareStatement(strUpdate);
            pstm.setString(1, Couserid);
            pstm.setInt(2, view);

            pstm.execute();
            ResultSet rs = pstm.executeQuery();
        } catch (Exception e) {
            System.out.println("Product Error: " + e.getMessage());
        }
    }
}
