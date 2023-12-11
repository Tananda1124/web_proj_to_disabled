package com.dm.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dm.common.RegisterDAO;
import com.dm.common.RegisterDTO;

@WebServlet("/list.do")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public MemberListController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegisterDAO rdao = new RegisterDAO();
		try {
			ArrayList<RegisterDTO> mList = rdao.selectMemberList();
			
			ArrayList<String> mList_ID = new ArrayList<String>();
			ArrayList<String> mList_PW = new ArrayList<String>();
			ArrayList<String> mList_MN = new ArrayList<String>();
			
			
			for(int i = 0; i < mList.size(); i++) {
				mList_ID.add(mList.get(i).getID());
			}
			for(int j = 0; j < mList.size(); j++) {
				mList_PW.add(mList.get(j).getPW());
			}
			for(int k = 0; k < mList.size(); k++) {
				mList_MN.add(mList.get(k).getisManager());
			}
			
			HttpSession se = request.getSession();
			se.setAttribute("loginCheck", "ok");
			
			se.setAttribute("vlist", mList);
			se.setAttribute("idList", mList_ID);
			se.setAttribute("pwList", mList_PW);
			se.setAttribute("permissionList", mList_MN);
			
			response.setContentType("text/html;charset=UTF-8");
			response.sendRedirect("./modules/manager.jsp");
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
