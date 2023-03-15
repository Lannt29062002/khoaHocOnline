/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Cousers;
import Model.incouser;
import context.DBContext;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class inCouserDAO extends DBContext {

    public ArrayList<incouser> getListcontentIncouser() {
        ArrayList<incouser> list = new ArrayList<>();

        try {
            String str = "Select * from inCouser order by slot ASC ";
            PreparedStatement pstm = connection.prepareStatement(str);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new incouser(rs.getString(1), rs.getInt(2), rs.getDate(3), rs.getDate(4), rs.getString(5)));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public ArrayList<incouser> getcontentIncouserbycouserId(String couserId) {
        ArrayList<incouser> list = new ArrayList<>();

        try {
            String str = "Select * from inCouser where couserId = ? order by slot ASC  ";
            PreparedStatement pstm = connection.prepareStatement(str);
            pstm.setString(1, couserId);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new incouser(rs.getString(1), rs.getInt(2), rs.getDate(3), rs.getDate(4), rs.getString(5)));
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public void AddSlot(String couserId, int slot, Date datebegin, Date dateend, String content) {
        try {
            String strInsert = "insert into  inCouser "
                    + "values (?  , ? , ?, ? , ?) ";
            PreparedStatement pstm = connection.prepareStatement(strInsert);
            pstm.setString(1, couserId);
            pstm.setInt(2, slot);
            pstm.setDate(3, datebegin);
            pstm.setDate(4, dateend);
            pstm.setString(5, content);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Update Product error: " + e.getMessage());
        }

    }

    public ArrayList<incouser> DeleteProduct(String couserid, int code) {
        ArrayList<incouser> list = new ArrayList<>();

        try {
            String str = "Delete From inCouser where  couserId= ? AND Slot = ?  ";
            PreparedStatement pstm = connection.prepareStatement(str);
            pstm.setString(1, couserid);
            pstm.setInt(2, code);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new incouser(rs.getString(1), rs.getInt(2), rs.getDate(3), rs.getDate(4), rs.getString(5)));

            }

            System.out.println(list);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public void updateSlot(String Couserid, int slot, Date datebegin, Date dateendDate, String content) {
        try {
            String strUpdate = " update inCouser "
                    + "set  DateBegin = ? ,DateEnd = ?, Ccontent= ? "
                    + "where couserId = ? and Slot = ? ";
            PreparedStatement pstm = connection.prepareStatement(strUpdate);
            pstm.setDate(1, datebegin);
            pstm.setDate(2, dateendDate);
            pstm.setString(3, content);
            pstm.setString(4, Couserid);
            pstm.setInt(5, slot);
            pstm.execute();
            ResultSet rs = pstm.executeQuery();
        } catch (SQLException e) {
            System.out.println("Product Error: " + e.getMessage());
        }
    }

}
