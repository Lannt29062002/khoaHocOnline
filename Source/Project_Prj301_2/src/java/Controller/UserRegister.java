/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.User;
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
public class UserRegister extends HttpServlet{
    
  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String account = req.getParameter("acc");
        String password = req.getParameter("pass");
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        String email = req.getParameter("email");
        Date dob = Date.valueOf(req.getParameter("dob"));
        String address = req.getParameter("address");
        String isTecher = req.getParameter("isTecher");
        User u = new User();
        if (gender.equals("Nam")) {
          gender = "True";
      }else{
          gender = "False";  
        }
         if (u.checkAcount(account)) {
          req.setAttribute("add", "Tên tài khoản đã tồn tại!");
          req.getRequestDispatcher("Register.jsp").forward(req, resp); 
         
         }else{
          u.registerUser(account, password, name, gender, email, dob, address,isTecher);
          req.setAttribute("add", "Add Student Successfully!");
          req.getRequestDispatcher("Register.jsp").forward(req, resp); 
         }
      
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("register");
    }
    
    
    
}
