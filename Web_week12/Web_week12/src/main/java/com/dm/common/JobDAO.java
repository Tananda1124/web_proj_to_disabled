package com.dm.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class JobDAO {
	   private Connection conn=null;
	   private PreparedStatement pstmt=null;
	   private ResultSet rs = null;
	   
	   private final String JOB_SEARCH = "select * from job;";
	   
	   public ArrayList<JobDTO> selectJobList() throws SQLException {
		   ArrayList<JobDTO> aList = new ArrayList<JobDTO>();
		      try {
		    	 conn = JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		         pstmt = conn.prepareStatement(JOB_SEARCH);
		         rs = pstmt.executeQuery();
		         while(rs.next()) {
		        	 JobDTO rd = new JobDTO();
		        	 rd.setCareer(rs.getString("career"));
		        	 rd.setLocation(rs.getString("location"));
		        	 rd.setTitle(rs.getString("title"));
		        	 rd.setJob_time(rs.getInt("job_time"));
		        	 rd.setCompany(rs.getString("company"));
		        	 aList.add(rd);
		         }
		      } catch(Exception e) {
		      } finally {
		         JDBCutil.close(pstmt, conn);		//conn.close();
		         		//pstmt.close();
		      }
		      return aList;
		   }
}
