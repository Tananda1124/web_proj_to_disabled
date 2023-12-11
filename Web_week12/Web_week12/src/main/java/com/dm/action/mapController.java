package com.dm.action;

import java.io.IOException;
import java.sql.SQLException;

import com.dm.common.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/map.do")
public class mapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
public mapController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String name = (String)request.getParameter("map_search");
		double lat = 1.1;
		double lng = 1.1;
		SearchDAO dao = new SearchDAO();
		
		try {
			lat = dao.dolatSearch(name);
			lng = dao.dolngSearch(name);
			
			HttpSession se = request.getSession();
			se.setAttribute("lat", lat);
			se.setAttribute("lng", lng);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("search.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
