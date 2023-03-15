/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class Cousers {
    String couserid ;
    String cousername ;
    String couserdes ;
    String couserimg ;

    public Cousers() {
        
    }

    public Cousers(String couserid, String cousername, String couserdes, String couserimg) {
        this.couserid = couserid;
        this.cousername = cousername;
        this.couserdes = couserdes;
        this.couserimg = couserimg;
    }

    public String getCouserid() {
        return couserid;
    }

    public void setCouserid(String couserid) {
        this.couserid = couserid;
    }

    public String getCousername() {
        return cousername;
    }

    public void setCousername(String cousername) {
        this.cousername = cousername;
    }

    public String getCouserdes() {
        return couserdes;
    }

    public void setCouserdes(String couserdes) {
        this.couserdes = couserdes;
    }

    public String getCouserimg() {
        return couserimg;
    }

    public void setCouserimg(String couserimg) {
        this.couserimg = couserimg;
    }
    
    
}
