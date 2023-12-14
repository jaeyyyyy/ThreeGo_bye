package com.util;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class JSFunction {


    public static void alertLocation(HttpServletResponse resp, String msg, String url){
        try {
            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            String script = ""
                    + "<script>"
                    +"  alert('"+msg + "');"
                    +"  location.href ='" +url + "';"
                    +"</script>";
            writer.print(script);
        } catch (IOException e) {}
    }
    public static void alertBack(HttpServletResponse resp, String msg){
        try{
            resp.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            String script = ""
                    + "<script>"
                    + " history.back();"
                    +"</scipt>";

            writer.print(script);
        }catch (Exception e){

        }
    }


}
