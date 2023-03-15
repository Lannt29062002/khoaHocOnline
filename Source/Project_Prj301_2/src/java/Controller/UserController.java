/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.User;
import dal.AuthorDAO;
import dal.CouserDao;
import dal.userDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

/**
 *
 * @author longn
 */
public class UserController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Nhan thong tin
        String account = req.getParameter("acc");
        String pass = req.getParameter("pass");
        CouserDao cdao = new CouserDao();
        userDAO uDAO = new userDAO();
        User u = new User(account, pass);
        if (u.checkLogin()) {
            HttpSession session = req.getSession();
            User user = u.istecherByAccount(account);
            System.out.println(user.getIsTecher());

            if (user.getIsTecher().equals("1")) {
                session.setAttribute("acc", "admin");
                System.out.println(session.getAttribute("acc"));
                req.setAttribute("acount", "admin");
                req.setAttribute("Accountname", account);
                req.setAttribute("couser", cdao.getListcouser());
                req.setAttribute("user", uDAO.getListUsers());
                req.getRequestDispatcher("Home.jsp").forward(req, resp);
            } else {

                session.setAttribute("acc", "student");
                req.setAttribute("Accountname", account);
                req.setAttribute("couser", cdao.getListcouser());
                req.setAttribute("user", uDAO.getListUsers());
                req.getRequestDispatcher("Home.jsp").forward(req, resp);

            }

        } else {
            req.setAttribute("error", "mat khau hoac tai khoan khong dung vui long thu lai");
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        //Tra ket qua ve JSP
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CouserDao cdao = new CouserDao();
        req.setAttribute("couser", cdao.getListcouser());
        req.getRequestDispatcher("Home.jsp").forward(req, resp);
    }

}
