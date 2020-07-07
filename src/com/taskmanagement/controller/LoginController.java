package com.taskmanagement.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taskmanagement.dao.LoginDao;
import com.taskmanagement.dto.TaskDto;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try {	String userName = request.getParameter("username");
        String password = request.getParameter("password");
		System.out.println(userName);
		System.out.println(password);
	 LoginDao dao=new LoginDao();
	  int result=dao.doLogin(userName, password);
	  if(result==1) {
			List<TaskDto> tasks = new ArrayList<>();
			TaskDto dto = new TaskDto("1234", "Sample task 1", "rajan");
			TaskDto dto1 = new TaskDto("1235", "Sample task 2", "rajan");
			TaskDto dto2 = new TaskDto("1234", "Sample task 3", "rajan");
			TaskDto dto3 = new TaskDto("1234", "Sample task 4", "rajan");
			TaskDto dto4 = new TaskDto("1234", "Sample task 5", "rajan");
			TaskDto dto5 = new TaskDto("1234", "Sample task 6", "rajan");
			TaskDto dto6 = new TaskDto("1234", "Sample task 7", "rajan");
			TaskDto dto7 = new TaskDto("1234", "Sample task 8", "rajan");
			TaskDto dto8 = new TaskDto("1234", "Sample task 9", "rajan");
			TaskDto dto9 = new TaskDto("1234", "Sample task 10", "rajan");
			TaskDto dto10 = new TaskDto("1234", "Sample task 11", "rajan");
			TaskDto dto11 = new TaskDto("1234", "Sample task 12", "rajan");
			TaskDto dto12 = new TaskDto("1234", "Sample task 13", "rajan");
			TaskDto dto13 = new TaskDto("1234", "Sample task 14", "rajan");

			tasks.add(dto13);
			tasks.add(dto12);
			tasks.add(dto11);
			tasks.add(dto10);
			tasks.add(dto9);
			tasks.add(dto8);
			tasks.add(dto7);
			tasks.add(dto6);
			tasks.add(dto5);
			tasks.add(dto4);
			tasks.add(dto3);
			tasks.add(dto2);
			tasks.add(dto1);
			request.setAttribute("tasks", tasks);
		  request.getRequestDispatcher("/dashboard.jsp").forward(request, response); 
	  }else {
		  request.setAttribute("message", "Not able to Login Try again ");
		  request.getRequestDispatcher("/index.jsp").forward(request, response); 
	  }
		
	}catch(Exception e) {
		System.out.println("Exception Occquered"+e.toString());
	}
	}

}
