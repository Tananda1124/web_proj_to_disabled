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

import com.dm.common.JobDAO;
import com.dm.common.JobDTO;

@WebServlet("/getjob")
public class JobDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JobDataController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JobDAO rdao = new JobDAO();
		try {
			ArrayList<JobDTO> jList = rdao.selectJobList();
			
			ArrayList<String> locationList = new ArrayList<String>();
			ArrayList<String> titleList = new ArrayList<String>();
			ArrayList<String> companyList = new ArrayList<String>();
			ArrayList<String> careerList = new ArrayList<String>();
			ArrayList<Integer> job_timeList = new ArrayList<Integer>();
			
			for(int i = 0; i < jList.size(); i++) {
				locationList.add(jList.get(i).getLocation());
				titleList.add(jList.get(i).getTitle());
				companyList.add(jList.get(i).getCompany());
				careerList.add(jList.get(i).getCareer());
				job_timeList.add(jList.get(i).getJob_time());
			}
			
			HttpSession se = request.getSession();
			se.setAttribute("jList", jList);

			se.setAttribute("locationList", locationList);
			se.setAttribute("titleList", titleList);
			se.setAttribute("companyList", companyList);
			se.setAttribute("careerList", careerList);
			se.setAttribute("job_timeList", job_timeList);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/modules/job.jsp");
			dispatcher.forward(request, response);
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
