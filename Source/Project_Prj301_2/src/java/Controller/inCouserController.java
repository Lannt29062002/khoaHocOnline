/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import dal.AuthorDAO;
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
public class inCouserController extends  HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        inCouserDAO iDao = new inCouserDAO();
        String code = req.getParameter("id");
        AuthorDAO adao = new AuthorDAO();
        req.setAttribute("author", adao.getListauthor(code));                
        req.setAttribute("incouser", iDao.getcontentIncouserbycouserId(code));
        req.getRequestDispatcher("inCouser.jsp").forward(req, resp);
        
        

    }
}
