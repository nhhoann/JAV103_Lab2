package com.lab2.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lab2.beans.Item;

@WebServlet("/detail")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        Item item = new Item("Túi xách Chanel", "https://www.chanel.com/images///f_auto,q_auto:good,dpr_1.1/w_3200/-9543207026718.jpg%203200w", 145000000.0, 15.0, new Date());
        if ("2".equals(id)) {
            item = new Item("Túi xách Dior", "https://cdn.vuahanghieu.com/unsafe/0x0/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/news/content/2022/03/555-jpg-1648714844-31032022152044.jpg", 110000000.0, 5.0, new Date());
        } else if ("3".equals(id)) {
            item = new Item("Túi YSL", "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2022/12/tui-deo-vai-small-ysl-le-5-a-7-hobo-bag-in-smooth-leather-mau-trang-kem-63a2a912d9e72-21122022133458.jpg", 53000000.0, 10.0, new Date());
        }
        req.setAttribute("item", item);
        req.getRequestDispatcher("/detail.jsp").forward(req, resp);
    }
}