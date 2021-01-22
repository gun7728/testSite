package com.test.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.test.vo.TestEventVO;

public class TestEventDAO extends DBConn{
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = "select count(*) from TESTEVENT";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	
	
	/**
	 * Update : 조회수 업데이트
	 */
	public void getUpdateHits(String eid) {
		try {
			String sql = "update TESTEVENT set ehits=ehits+1 "
					+ " where nid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, eid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	/**
	 * Delete : 삭제
	 */
	public boolean getDelete(String eid) {
		boolean result = false;
		
		try {
			String sql = "delete from TESTEVENT where nid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, eid);
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * Update : 내용 수정
	 */
	public boolean getUpdate(TestEventVO vo) {
		boolean result = false;
		
		try {
			String sql = "update TESTEVENT set etitle=?, encontent=? "
					+ " where eid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getEtitle());
			pstmt.setString(2, vo.getEcontent());
			pstmt.setString(3, vo.getEid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	/**
	 * Select : 상세정보 출력
	 */
	public TestEventVO getContent(String nid) {
		TestEventVO vo = new TestEventVO();
		
		try {
			String sql = "select eid,etitle, econtent "
					+ ",to_char(edate,'yyyy.mm.dd'),to_char(edate2,'yyyy.mm.dd'),ehits, efile, esfile, efile_t, esfile_t " + 
					" from TESTEVENT where eid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setEid(rs.getString(1));
				vo.setEtitle(rs.getString(2));
				vo.setEcontent(rs.getString(3));
				vo.setEdate(rs.getString(4));
				vo.setEdate2(rs.getString(5));
				vo.setEhits(rs.getInt(6));
				vo.setEfile(rs.getString(7));
				vo.setEsfile(rs.getString(8));
				vo.setEfile_t(rs.getString(9));
				vo.setEsfile_t(rs.getString(10));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	/**
	 * Select : 전체 리스트 출력 
	 */
	public ArrayList<TestEventVO> getList(int start, int end){
		ArrayList<TestEventVO> list = new ArrayList<TestEventVO>();
		
		try {
			String sql = "select * from (select rownum rno, eid, etitle, to_char(edate,'yyyy.mm.dd'), to_char(edate2,'yyyy.mm.dd'), ehits" + 
					" from (select * from TESTEVENT order by edate desc)) "
					+ " where rno between ? and ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);			
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				TestEventVO vo = new TestEventVO();
				vo.setRno(rs.getInt(1));
				vo.setEid(rs.getString(2));
				vo.setEtitle(rs.getString(3));
				vo.setEdate(rs.getString(4));
				vo.setEdate2(rs.getString(5));
				vo.setEhits(rs.getInt(6));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * Select : 전체 리스트 출력 
	 */
	public ArrayList<TestEventVO> getList(){
		ArrayList<TestEventVO> list = new ArrayList<TestEventVO>();
		
		try {
			String sql = "select rownum rno, eid, etitle, to_char(edate,'yyyy.mm.dd'), to_char(edate2,'yyyy.mm.dd'), ehits" + 
					" from (select * from TESTEVENT order by edate desc)";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				TestEventVO vo = new TestEventVO();
				vo.setRno(rs.getInt(1));
				vo.setEid(rs.getString(2));
				vo.setEtitle(rs.getString(3));
				vo.setEdate(rs.getString(4));
				vo.setEdate2(rs.getString(5));
				vo.setEhits(rs.getInt(6));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}			
		return list;
	}
	
	/**
	 * Insert : 공지사항 글쓰기
	 */
	public boolean getInsert(TestEventVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into TESTEVENT "
				+ " values('n_'||sequ_TESTEVENT.nextval,?,?,?,?,?,?,sysdate,?,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getEtitle());
			pstmt.setString(2, vo.getEcontent());
			pstmt.setString(3, vo.getEfile());
			pstmt.setString(4, vo.getEsfile());
			pstmt.setString(5, vo.getEfile_t());
			pstmt.setString(6, vo.getEsfile_t());
			pstmt.setString(7, vo.getEdate2());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}//class





