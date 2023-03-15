/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author longn
 */
public class User {

    String account, password, name, gender, email, address, dob;
    String isTecher;

    public User() {
        connect();
    }

    public User(String account, String password, String name, String gender, String email, String address, String dob, String isTecher) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.isTecher = isTecher;
        connect();
    }

    public User(String account, String pass) {
        this.account = account;
        this.password = pass;
        connect();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getIsTecher() {
        return isTecher;
    }

    public void setIsTecher(String isTecher) {
        this.isTecher = isTecher;
    }

    public Connection getCnn() {
        return cnn;
    }

    public void setCnn(Connection cnn) {
        this.cnn = cnn;
    }

    public boolean checkLogin() {

        try {
            String strSelect = "select * from Users "
                    + "where account=? and "
                    + "password=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, account);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Login error: " + e.getMessage());
        }
        return false;
    }

    Connection cnn;//dung de ket noi db
    Statement stm;//dung de thuc hien cau lenh sql
    ResultSet rs;//luu tru va xu li du lieu
    PreparedStatement pstm;//co the thuc hien giong stm

    private void connect() {
        try {
            //C1: Su dung DBContext1
            cnn = new DBContext().connection;
            System.out.println("Connect success");
        } catch (Exception e) {
            System.out.println("Connect error:" + e.getMessage());
        }
    }

    public boolean checkUser(String account, String dob) {
        try {
            String strSelect = "select * from Users "
                    + "where account=? and "
                    + "dateofbirth=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, account);
            pstm.setString(2, dob);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Check User Error: " + e.getMessage());
        }
        return false;
    }

    public boolean checkAcount(String account) {
        try {
            String strSelect = "select * from Users "
                    + "where account=? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, account);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Check User Error: " + e.getMessage());
        }
        return false;
    }

    public void updatePass(String account, String newpass) {
        try {
            String strUpdate = "update Users "
                    + "set password=? "
                    + "where account=?";
            pstm = cnn.prepareStatement(strUpdate);
            pstm.setString(1, newpass);
            pstm.setString(2, account);
            rs = pstm.executeQuery();
        } catch (Exception e) {
            System.out.println("Update password error: " + e.getMessage());
        }
    }

    public void registerUser(String account, String password, String name, String gender, String email, Date dob, String address, String isTecher) {
        try {
            String strInsert = "insert into "
                    + "Users(account, [Password], UserName, Gender, Email,DateOfBirth ,[address], isTeacher) "
                    + "values(?,?,?,?,?,?,?,?)";
            pstm = cnn.prepareStatement(strInsert);
            pstm.setString(1, account);
            pstm.setString(2, password);
            pstm.setString(3, name);
            pstm.setString(4, gender);
            pstm.setString(5, email);
            pstm.setDate(6, dob);
            pstm.setString(7, address);
            pstm.setString(8, isTecher);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("Update users error: " + e.getMessage());
        }

    }

    public void UserNameByAccount(String account) {
        try {
            String strInsert = " Select UserName "
                    + "from Users where account = ? ";
            pstm = cnn.prepareStatement(strInsert);
            pstm.setString(1, account);
            pstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("username error: " + e.getMessage());
        }

    }

    public User istecherByAccount(String account) {
        
        User u = new User();
        try {
            String strInsert = " select * from Users "
                    + " where account = ? ";
            pstm = cnn.prepareStatement(strInsert);
            pstm.setString(1, account);
            rs = pstm.executeQuery();
            while (rs.next()) {
               u = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
               
            }
            
        } catch (Exception e) {
            System.out.println("username error: " + e.getMessage());
        }
        return u;
    }

}
