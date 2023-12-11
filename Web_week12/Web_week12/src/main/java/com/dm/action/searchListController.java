package com.dm.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dm.common.SearchDAO;
import com.dm.common.SearchDTO;

@WebServlet("/search.do")
public class searchListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public searchListController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		SearchDAO dao = new SearchDAO();
		SearchDTO dt = new SearchDTO();
		
		try {
			ArrayList<SearchDTO> sList = dao.loadSearchList();
			
			ArrayList<String> nameList = new ArrayList<String>();
			ArrayList<String> addressList = new ArrayList<String>();
			ArrayList<String> typeList = new ArrayList<String>();
			
			for(int i = 0; i < sList.size(); i++) {
				nameList.add(sList.get(i).getS_name());
				addressList.add(sList.get(i).getS_address());
				typeList.add(sList.get(i).getS_type());
			}
			
			HttpSession se =  request.getSession();
			se.setAttribute("nameList", nameList);
			se.setAttribute("addressList", addressList);
			se.setAttribute("typeList", typeList);
			
			response.sendRedirect(request.getContextPath()+"/search");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
