/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import dal.inCouserDAO;
import dal.viewDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author lannt
 */
public class viewcouser extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String couserid = req.getParameter("");
        int view = Integer.parseInt(req.getParameter(""));
        int addview = view + 1;
        viewDAO vdao = new viewDAO();
        vdao.updateview(couserid, addview);
        req.setAttribute("view", vdao.getListview());
        req.getRequestDispatcher("Home.jsp").forward(req, resp);

    }

}
