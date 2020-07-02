package com.taskmanagement.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taskmanagement.dao.TaskManagementDao;
import com.taskmanagement.dto.TaskDto;

/**
 * Servlet implementation class TaskController
 */
@WebServlet("/addtask")
public class TaskController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TaskController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			TaskDto dto=new TaskDto();
			dto.setTaskDescription(request.getParameter("description"));
			dto.setTaskid(request.getParameter("taskid"));
			dto.setUserid(request.getParameter("userid"));
			TaskManagementDao dao = new TaskManagementDao();
			dao.saveTask(dto);
		} catch (Exception e) {
          System.out.println("Exception occqured while adding Task"+e.toString());
		}

	}

}
