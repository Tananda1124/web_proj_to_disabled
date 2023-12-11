package com.dm.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SearchDAO {
	   private Connection conn=null;
	   private PreparedStatement pstmt=null;
	   private ResultSet rs = null;
	   
	   private final String SEARCH_LIST = "select s_name, s_type, address from seoul_supports;";
	   private final String SEARCH_LAT = "select latitude from seoul_supports where s_name = ?;";
	   private final String SEARCH_LNG = "select longitude from seoul_supports where s_name = ?;";
	   
	   public ArrayList<SearchDTO> loadSearchList() throws SQLException{
		   ArrayList<SearchDTO> sList = new ArrayList<SearchDTO>();
		   try {
		    	 conn = JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		         pstmt = conn.prepareStatement(SEARCH_LIST);
		         rs = pstmt.executeQuery();
		         
		         while(rs.next()) {
		        	 SearchDTO dt = new SearchDTO();
		        	 dt.setS_address(rs.getString("address"));
		        	 dt.setS_type(rs.getString("s_type"));
		        	 dt.setS_name(rs.getString("s_name"));
		        	 sList.add(dt);
		         }
			   
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }finally {
			   JDBCutil.close(pstmt, conn);
		   }
		   return sList;
	   }
	   
	   public double dolatSearch(String name) throws SQLException{
		   double lat = 3.3;
		   try {
			   conn = JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		       pstmt = conn.prepareStatement(SEARCH_LAT);
		       pstmt.setString(1,  name);
			   rs = pstmt.executeQuery();
			   
			   while(rs.next()) {
				   lat = rs.getDouble("latitude");
			   }
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }
		   return lat;
	   }
	   
	   public double dolngSearch(String name) throws SQLException{
		   double lng = 3.3;
		   try {
			   conn = JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		       pstmt = conn.prepareStatement(SEARCH_LNG);
		       pstmt.setString(1,  name);
			   rs = pstmt.executeQuery();
			   
			   while(rs.next()) {
				   lng = rs.getDouble("longitude");
			   }
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }
		   return lng;
	   }
	
}
