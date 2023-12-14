package com.data;

import com.common.JDBConnect;

public class TouritemDAO extends JDBConnect {
    public TouritemDAO() {  super();  }

    public int insertTouritem(TourItemDTO dto){
        int result = 1;

        try {
            //쿼리 작성
            String query = "INSERT INTO touritem ("
                    + "contentid, cat1, cat2, cat3, areacode, contenttypeid, "
                    + "addr1, addr2, firstimage, mapx, mapy, mlevel, sigungucode, tel, title)"
                    + "VALUES("
                    + "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getContentid());
            psmt.setString(2,dto.getCat1());
            psmt.setString(3,dto.getCat2());
            psmt.setString(4,dto.getCat3());
            psmt.setString(5,dto.getAreacode());
            psmt.setString(6,dto.getContenttypeid());
            psmt.setString(7,dto.getAddr1());
            psmt.setString(8,dto.getAddr2());
            psmt.setString(9,dto.getFirstimage());
            psmt.setString(10,dto.getMapx());
            psmt.setString(11,dto.getMapy());
            psmt.setString(12,dto.getMlevel());
            psmt.setString(13,dto.getSigungucode());
            psmt.setString(14,dto.getTel());
            psmt.setString(15,dto.getTitle());

            result = psmt.executeUpdate();
        }catch (Exception e){
            System.out.println("insertTouritem 메소드 오류 발생");
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

            System.out.println("관광지 - JDBC 자원 해제");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}