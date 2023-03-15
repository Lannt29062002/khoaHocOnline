/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import dal.CouserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author lannt
 */
public class UpdateCouser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       CouserDao cDao = new CouserDao();
       String couserID = req.getParameter("Couserid");
       String couserName = req.getParameter("Cousername");
       String couserDes = req.getParameter("Couserdes");
       String couserImg = req.getParameter("Couserimg");
        if ( couserName == null && couserDes == null) {
            resp.sendRedirect("update");
        } else {
            req.setAttribute("couser", cDao.updateProduct(couserID, couserName, couserDes, couserImg));
            resp.sendRedirect("update");
            
        }
       
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CouserDao cDao = new CouserDao();
        req.setAttribute("couser", cDao.getListcouser());
        req.getRequestDispatcher("EditCouser.jsp").forward(req, resp);

    }

}
