package com.data;

import com.common.JDBConnect;

public class SigunguDAO extends JDBConnect {
    public SigunguDAO() {  super();  }

    public int insertSigungu(SigunguDTO dto){
        int result = 1;

        try {
            //쿼리 작성
            String query = "INSERT INTO t_sigungu ("
                    + " s_sigungucode, s_areacode, sigungu_name )"
                    + " VALUES(?,?,?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getS_sigungucode());
            psmt.setString(2,dto.getS_areacode());
            psmt.setString(3,dto.getSigungu_name());

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

            System.out.println("시군구 - JDBC 자원 해제");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
