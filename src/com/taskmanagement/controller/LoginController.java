package com.taskmanagement.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taskmanagement.dao.LoginDao;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	try {	String userName = request.getParameter("username");
        String password = request.getParameter("password");
		System.out.println(userName);
		System.out.println(password);
	 LoginDao dao=new LoginDao();
	  int result=dao.doLogin(userName, password);
	  if(result==1) {
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
