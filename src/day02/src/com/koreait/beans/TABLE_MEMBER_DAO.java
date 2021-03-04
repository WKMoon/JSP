package com.koreait.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TABLE_MEMBER_DAO {
	
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	TABLE_MEMBER_VO member;
	
	//아이디 중복 검사 메소드 
	
	public boolean idcheck(String id) {
		boolean check=false;
		
		String query="SELECT COUNT(*) FROM TBL_USER  WHERE ID=?";
		
		try {
			conn=DBConnection.getConnection();
			pstm=conn.prepareStatement(query);
			pstm.setString(1,id );
			rs = pstm.executeQuery();
			
			rs.next();
			
			//중복이 있으면 1이 있다는 뜻 
			if(rs.getInt(1)==1) {
				check=true;
			}
		
		}catch (SQLException e) {
			System.out.println("select(String) 쿼리 오류" + e.getMessage());
		} catch (Exception e) {
			System.out.println("select(String) 오류" + e.getMessage());
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstm != null) {
					pstm.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		
		return check;
	}

}
