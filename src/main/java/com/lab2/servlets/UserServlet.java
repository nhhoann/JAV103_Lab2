package com.lab2.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lab2.beans.User;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private final List<User> userList = new ArrayList<>();

    @Override
    public void init() {
        userList.add(new User("Username 1", "Password 1", true));
        userList.add(new User("Username 2", "Password 2", false));
        userList.add(new User("Username 3", "Password 3", true));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("message", "Nhập thông tin user mới");
        req.setAttribute("form", new User());
        req.setAttribute("items", userList);
        req.getRequestDispatcher("/user-management.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        boolean remember = req.getParameter("remember") != null;
        userList.add(new User(username, password, remember));
        req.setAttribute("message", "Đã thêm user: " + username);
        req.setAttribute("form", new User());
        req.setAttribute("items", userList);
        req.getRequestDispatcher("/user-management.jsp").forward(req, resp);
    }
}