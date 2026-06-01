package com.poly.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/bai4")
public class Bai4Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp)
            throws ServletException, IOException {

        Map<String, Object> map = new HashMap<>();

        map.put("title", "Tiêu đề bản tin");

        map.put("content",
                "Nội dung bản tin thường rất dài. "
                        + "Đây là ví dụ để kiểm tra xử lý chuỗi "
                        + "bằng JSTL functions library trong JSP.");

        req.setAttribute("item", map);

        req.getRequestDispatcher("/bai4.jsp")
                .forward(req, resp);
    }
}