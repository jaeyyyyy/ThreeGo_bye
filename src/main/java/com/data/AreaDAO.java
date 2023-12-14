package com.data;

import com.common.JDBConnect;

public class AreaDAO extends JDBConnect {
    public AreaDAO() { super(); }

    public int insertArea(AreaDTO dto){
        int result = 1;

        try {
            //쿼리 작성
            String query = "INSERT INTO t_area ("
                    + " j_areacode, j_area_name)"
                    + " VALUES(?,?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getJ_areacode());
            psmt.setString(2,dto.getJ_area_name());

            result = psmt.executeUpdate();
        }catch (Exception e){
            System.out.println("insertArea 메소드 오류 발생");
            e.printStackTrace();
        }


        return result;
    }

    @Override
    public void close() {
        try {
            if(rs !=null) rs.close();
            if(stmt !=null) stmt.close();
            if(psmt != null) psmt.close();
            if(con != null) con.close();

            System.out.println("지역 - JDBC 자원 해제");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
