/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Cousers;
import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class CouserDao extends DBContext {

    public ArrayList<Cousers> getListcouser() {
        ArrayList<Cousers> list = new ArrayList<>();

        try {
            String str = "Select * from Couser order by couserId DESC ";
            PreparedStatement pstm = connection.prepareStatement(str);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {

                list.add(new Cousers(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));

            }
            System.out.println(list);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public Cousers getCousersById(String code) {
        Cousers p = new Cousers();
        try {
            String strSelect = "Select * from Couser where couserId = ? ";
            PreparedStatement pstm = connection.prepareStatement(strSelect);
            pstm.setString(1, code);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                String Couserid = rs.getString(1);
                String Cousername = rs.getString(2);
                String Couserdes = rs.getString(3);
                String Couserimg = rs.getString(4);
                p = new Cousers(Couserid, Cousername, Couserdes, Couserimg);
            }
        } catch (Exception e) {
            System.out.println("Get list product error: " + e.getMessage());
        }
        return p;
    }

    public ArrayList<Cousers> DeleteProduct(String code) {
        ArrayList<Cousers> list = new ArrayList<>();

        try {
            String str = "Delete From Couser where couserId= ? ";
            PreparedStatement pstm = connection.prepareStatement(str);
            pstm.setString(1, code);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new Cousers(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }

            System.out.println(list);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;
    }

    public void updateProduc3t(String Couserid, String CouserName, String CouserDes, String CouserImg) {
        try {
            String strUpdate = " Update Couser "
                    + " Set couserName = ? , Couserdes = ? , CouserImg = ?"
                    + "where couserId = ? ";
            PreparedStatement pstm = connection.prepareStatement(strUpdate);
            pstm.setString(1, CouserName);
            pstm.setString(2, CouserName);
            pstm.setString(3, CouserDes);
            pstm.setString(4, Couserid);
            pstm.execute();
            ResultSet rs = pstm.executeQuery();
        } catch (Exception e) {
            System.out.println("Product Error: " + e.getMessage());
        }
    }

    public ArrayList<Cousers> updateProduct(String Couserid, String CouserName, String CouserDes, String CouserImg) {
        ArrayList<Cousers> list = new ArrayList<>();

        try {
            String strUpdate = " Update Couser "
                    + " Set couserName = ? , Couserdes = ? , CouserImg = ? "
                    + "where couserId = ? ";
            PreparedStatement pstm = connection.prepareStatement(strUpdate);
            pstm.setString(1, CouserName);
            pstm.setString(2, CouserDes);
            pstm.setString(3, CouserImg);
            pstm.setString(4, Couserid);
            pstm.execute();
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                list.add(new Cousers(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }

        } catch (Exception e) {
            System.out.println("Product Error: " + e.getMessage());
        }

        return list;
    }

    public void AddCouser(String couserId, String couserName, String Couserdes, String CouserImg) {
        try {
            String strInsert = "Insert into Couser (couserId,couserName,Couserdes,CouserImg) "
                    + " values (? , ? , ? , ? ) ";
            PreparedStatement pstm = connection.prepareStatement(strInsert);
            pstm.setString(1, couserId);
            pstm.setString(2, couserName);
            pstm.setString(3, Couserdes);
            pstm.setString(4, CouserImg);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("Update Product error: " + e.getMessage());
        }

    }
    
    


}
