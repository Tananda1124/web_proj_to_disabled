package com.dm.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RegisterDAO {
   private Connection conn=null;
   private PreparedStatement pstmt=null;
   private ResultSet rs = null;
   
   private final String USER_INSERT = "insert into membertbl (id, pw) values(?, ?);";
   private final String USER_LOGIN = "select id, pw from membertbl where id = ?;";
   private final String USER_ISMANAGER = "select ismanager from membertbl where id = ?;";
   private final String USER_LIST ="select * from membertbl;";
   private final String USER_FIND ="select id from membertbl where id = (?) and pw = (?);";
   
   public void insertMember (RegisterDTO mem) throws SQLException {
      try {
    	 conn=JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
         pstmt = conn.prepareStatement(USER_INSERT);
         pstmt.setString(1, mem.getID());
         pstmt.setString(2, mem.getPW());
         pstmt.executeUpdate();
      } catch(Exception e) {
      } finally {
         JDBCutil.close(pstmt, conn);		//conn.close();
         		//pstmt.close();
      }
   }
   
   public String checkLogin(RegisterDTO dt) throws SQLException{
	   String st = null;
	   String id = (String)dt.getID();
	   String pw = (String)dt.getPW();
	   conn=JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	   pstmt = conn.prepareStatement(USER_LOGIN);
	   pstmt.setString(1, dt.getID());
	   rs = pstmt.executeQuery();
	     
	     while(rs.next()) {
	    	 if(rs.getString("id").equals(id)) {
	    		 if(rs.getString("pw").equals(pw)) {
	    			 st = "yes";
	    		 }
	    		 else st = "no";
	    	 }
	    	 else st = "no";
	     }
	     JDBCutil.close(pstmt, conn);
	  return st;
   }
   
   
   public String checkManager(RegisterDTO dt) throws SQLException{
	   String st = null;
	   String id = (String)dt.getID();
	   conn = JDBCutil.getConnection();
	   pstmt = conn.prepareStatement(USER_ISMANAGER);
	   pstmt.setString(1, id);
	   rs = pstmt.executeQuery();
	   
	   while (rs.next()) {
		   if(rs.getString("ismanager").equals("1")) {
			   st = "yes";
		   }
		   else st = "no";
	   }
	   JDBCutil.close(pstmt, conn);
	   return st;
   }
 
   public ArrayList<RegisterDTO> selectMemberList() throws SQLException {
	   ArrayList<RegisterDTO> aList = new ArrayList<RegisterDTO>();
	      try {
	    	 conn = JDBCutil.getConnection();		//conn=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	         pstmt = conn.prepareStatement(USER_LIST);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	        	 RegisterDTO rd = new RegisterDTO();
	        	 rd.setID(rs.getString("id"));
	        	 rd.setPW(rs.getString("pw"));
	        	 rd.setisManager(rs.getString("ismanager"));
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