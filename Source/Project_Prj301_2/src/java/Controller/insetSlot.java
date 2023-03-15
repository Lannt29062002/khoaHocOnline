/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import dal.inCouserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

/**
 *
 * @author lannt
 */
public class insetSlot extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        inCouserDAO cDao = new inCouserDAO();
        String code = req.getParameter("id");
        int slot = Integer.parseInt(req.getParameter("Slot"));
        Date datebegin = Date.valueOf(req.getParameter("datebegin"));
        Date dateend = Date.valueOf(req.getParameter("datebend"));
        String content = req.getParameter("content");
        
        try {
            cDao.AddSlot(code, slot, datebegin, dateend, content);
            req.setAttribute("incouser", cDao.getcontentIncouserbycouserId(code));
            req.getRequestDispatcher("EditIncouser.jsp").forward(req, resp);
        } catch (Exception e) {
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        inCouserDAO cDao = new inCouserDAO();
        String code = req.getParameter("id");
        System.out.println(code);
        req.setAttribute("couseride", code);
        req.setAttribute("incouser", cDao.getcontentIncouserbycouserId(code));
        req.getRequestDispatcher("EditIncouser.jsp").forward(req, resp);

    }

}
