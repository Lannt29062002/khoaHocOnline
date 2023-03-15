/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author lannt
 */
public class author {
    String couserid ;
    Date startdate ;
    String Auimg ;
    String Auname ;
    String Auemail ;

    public author() {
    }

    public author(String couserid, Date startdate, String Auimg, String Auname, String Auemail) {
        this.couserid = couserid;
        this.startdate = startdate;
        this.Auimg = Auimg;
        this.Auname = Auname;
        this.Auemail = Auemail;
    }

    public String getCouserid() {
        return couserid;
    }

    public void setCouserid(String couserid) {
        this.couserid = couserid;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public String getAuimg() {
        return Auimg;
    }

    public void setAuimg(String Auimg) {
        this.Auimg = Auimg;
    }

    public String getAuname() {
        return Auname;
    }

    public void setAuname(String Auname) {
        this.Auname = Auname;
    }

    public String getAuemail() {
        return Auemail;
    }

    public void setAuemail(String Auemail) {
        this.Auemail = Auemail;
    }
    
    
}
