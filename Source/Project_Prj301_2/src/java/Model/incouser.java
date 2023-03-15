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
public class incouser {
    String couserid ;
    int slot ;
    Date datebegin;
    Date dateend ;
    String content ;

    public incouser() {
    }

    public incouser(String couserid, int slot, Date datebegin, Date dateend, String content) {
        this.couserid = couserid;
        this.slot = slot;
        this.datebegin = datebegin;
        this.dateend = dateend;
        this.content = content;
    }

    public String getCouserid() {
        return couserid;
    }

    public void setCouserid(String couserid) {
        this.couserid = couserid;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }

    public Date getDatebegin() {
        return datebegin;
    }

    public void setDatebegin(Date datebegin) {
        this.datebegin = datebegin;
    }

    public Date getDateend() {
        return dateend;
    }

    public void setDateend(Date dateend) {
        this.dateend = dateend;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
}
