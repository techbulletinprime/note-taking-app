package com.taskmanagement.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/signUp")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Dopost called");
		String fullName=request.getParameter("full-name");
		String email=request.getParameter("email-address");
		String userName=request.getParameter("user-name");
		String phoneNumber=request.getParameter("phone-number");
		String presentAddress= request.getParameter("present-address");
		String peramanentAddress=request.getParameter("permanent-address");
		String adharNumber=request.getParameter("nid-number");
		request.setAttribute("message", "Signup done");
		System.out.println(fullName);
		System.out.println(email);
		System.out.println(userName);
		System.out.println(phoneNumber);
		System.out.println(presentAddress);
		System.out.println(peramanentAddress);
		System.out.println(adharNumber);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}
