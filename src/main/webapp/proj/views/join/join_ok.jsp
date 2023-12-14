<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String phone1 = request.getParameter("phone1");
    String phone2 = request.getParameter("phone2");
    String phone3 = request.getParameter("phone3");
    String gender = request.getParameter("gender");

    // 1.변수선언
//    TODO : 이 부분 바꿔줘야함.
    String url = "jdbc:oracle:thin:@localhost:1521/XEPDB1";
    String uid = "JSP";
    String upw = "JSP";

    Connection conn = null;
    PreparedStatement pstmt = null;

    String sql = "insert into members values(?, ?, ?, ?, ?, ?, ?)";

    try{
        // 1. 드라이버 로드
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // 2. conn 생성
        conn = DriverManager.getConnection(url, uid, upw);

        // 3. pstmt 생성
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        pstmt.setString(3, name);
        pstmt.setString(4, phone1);
        pstmt.setString(5, phone2);
        pstmt.setString(6, phone3);
        pstmt.setString(7, gender);

        // 4. sql문 실행
        int result = pstmt.executeUpdate();

        if(result == 1){ // 성공
            response.sendRedirect("join_success.jsp");
        } else{ // 실패
            response.sendRedirect("join_fail.jsp");
        }

    } catch(Exception e){
        e.printStackTrace();
    } finally{
        try{
            if(conn != null) conn.close();
            if(pstmt != null) pstmt.close();
        } catch(Exception e){
            e.printStackTrace();
        }
    }
%>