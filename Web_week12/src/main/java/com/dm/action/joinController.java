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

@WebServlet("/join.do")
public class joinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public joinController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String id = (String)request.getParameter("ID");
		String pw = (String)request.getParameter("PW");
		
		RegisterDAO rd  = new RegisterDAO();
		RegisterDTO rt = new RegisterDTO();
		rt.setID(id);
		rt.setPW(pw);
		
		try {
			rd.insertMember(rt);
		}catch(SQLException e) {
			e.printStackTrace();
		}

		response.setContentType("text/html;charset=UTF-8");
		response.sendRedirect(request.getContextPath()+"/login");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
