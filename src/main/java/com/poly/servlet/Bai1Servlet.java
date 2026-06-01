package com.poly.servlet;

import com.poly.model.Country;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/bai1")
public class Bai1Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        List<Country> list = List.of(
                new Country("VN", "Việt Nam"),
                new Country("US", "United States"),
                new Country("CN", "China")
        );

        req.setAttribute("countries", list);

        req.getRequestDispatcher("/bai1.jsp")
                .forward(req, resp);
    }
}