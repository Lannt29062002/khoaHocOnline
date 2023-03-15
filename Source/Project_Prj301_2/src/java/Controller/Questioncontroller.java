/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Question;
import dal.QuestionDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author lannt
 */
public class Questioncontroller extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        QuestionDAO qdao = new QuestionDAO();
        ArrayList<Question> list = qdao.getListQuestion();
        int page = 0 , numberpage = 1 , size = list.size();
        
        String xpage = req.getParameter("page");
        
        if (xpage == null ) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
            
        }
        
        int begin = numberpage * (page - 1);
        int end = Math.min(numberpage * page, size);   
        
        req.setAttribute("quetion", qdao.getListQuestion());
        req.getRequestDispatcher("question.jsp").forward(req, resp);
        
    }
    
}
