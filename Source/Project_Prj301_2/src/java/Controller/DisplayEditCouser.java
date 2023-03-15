/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import dal.CouserDao;
import dal.inCouserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author lannt
 */
public class DisplayEditCouser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       CouserDao cDao = new CouserDao();
       String couserID = req.getParameter("Couserid");
       String couserName = req.getParameter("Cousername");
       String couserDes = req.getParameter("Couserdes");
       String couserImg = req.getParameter("Couserimg");
       cDao.AddCouser(couserID, couserName, couserDes, couserImg);
       resp.sendRedirect("insert");
    }

     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        inCouserDAO cDao = new inCouserDAO();
        String code = req.getParameter("id");
        req.setAttribute("incouser", cDao.getcontentIncouserbycouserId(code));
        req.getRequestDispatcher("EditIncouser.jsp").forward(req, resp);

    }

    
}
