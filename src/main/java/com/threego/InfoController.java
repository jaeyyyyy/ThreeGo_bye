package com.threego;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/info.do")
public class InfoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String area = req.getParameter("area");
        String sigungu = req.getParameter("sigungu");
        String cat1 = req.getParameter("cat1");
        String cat2 = req.getParameter("cat2");
        String cat3 = req.getParameter("cat3");
        String type = req.getParameter("type");

        Map<String, String> map = new HashMap<>();
        if(area != null) map.put(area, "area");
        if(sigungu != null) map.put(sigungu, "sigungu");
        if(cat1 != null) map.put(cat1, "cat1");
        if(cat2 != null) map.put(cat2, "cat2");
        if(cat3 != null) map.put(cat3, "cat3");
        if(type != null) map.put(type, "type");


    }
}
