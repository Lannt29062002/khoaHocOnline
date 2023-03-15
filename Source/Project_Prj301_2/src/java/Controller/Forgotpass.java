/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.User;
import dal.CouserDao;
import dal.inCouserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

/**
 *
 * @author lannt
 */
public class Forgotpass extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
    }

     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("acc");
        String dob = req.getParameter("dob");

        User u = new User();
        if (u.checkUser(account, dob)) {
            Random r = new Random();
            String newpass = r.nextInt(1000) + "";
            //luu mat khau vao database
            u.updatePass(account, newpass);
            //tra ket qua ve cho login
            req.setAttribute("account", account);
            req.setAttribute("newpass", newpass);
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        } else {
            //Tra ve trang forgot password
            req.getRequestDispatcher("ForgotPass.jsp").forward(req, resp);
        }
    }

    
}