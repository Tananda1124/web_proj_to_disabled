package com.dm.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dm.common.*;

@WebServlet("/managerCheck")
public class managerCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public managerCheck() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession se = request.getSession();
		
		String id = (String)se.getAttribute("loginMember");
		RegisterDTO dt = new RegisterDTO();
		RegisterDAO dao = new RegisterDAO();
		
		dt.setID(id);
		
		try {
			if(dao.checkManager(dt).equals("yes")) {
				se.setAttribute("isManager", "yes");
			}
			else if(dao.checkManager(dt).equals("no")) {
				se.setAttribute("isManager", "no");
			}
			else {
				se.setAttribute("isManager", null);
			}
				 
		}catch(SQLException e){
			e.printStackTrace();
		}

		response.setContentType("text/html;charset=UTF-8");
		response.sendRedirect(request.getContextPath() + "/main");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
