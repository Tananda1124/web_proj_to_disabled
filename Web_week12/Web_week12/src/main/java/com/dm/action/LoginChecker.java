package com.dm.action;

import java.io.IOException;
import java.sql.SQLException;

import com.dm.common.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/check.do")
public class LoginChecker extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public LoginChecker() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = (String)request.getParameter("ID");
		String pw = (String)request.getParameter("PW");
		RegisterDTO dto = new RegisterDTO();
		RegisterDAO dao = new RegisterDAO();
		
		HttpSession se = request.getSession();
		
		dto.setID(id); dto.setPW(pw);
		
		try {
			if(dao.checkLogin(dto).equals("no")) {
				se.setAttribute("loginCheck", "no");
			}
			if(dao.checkLogin(dto).equals("yes")) {
				se.setAttribute("loginCheck", "yes");
				se.setAttribute("loginMember", id);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.setContentType("text/html;charset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/managerCheck");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
