package com.poly.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/bai3")
public class Bai3Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        Map<String, Object> map = new HashMap<>();

        map.put("name", "iPhone 2024");
        map.put("price", 12345.678);
        map.put("date", new Date());

        req.setAttribute("item", map);

        req.getRequestDispatcher("/bai3.jsp")
                .forward(req, resp);
    }
}