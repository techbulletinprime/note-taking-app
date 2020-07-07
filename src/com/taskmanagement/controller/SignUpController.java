package com.taskmanagement.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.taskmanagement.dao.TaskManagementDao;
import com.taskmanagement.dto.UserDto;

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Dopost called");
		String fullName = request.getParameter("full-name");
		String email = request.getParameter("email-address");
		String userName = request.getParameter("user-name");
		String phoneNumber = request.getParameter("phone-number");
		String presentAddress = request.getParameter("present-address");
		String peramanentAddress = request.getParameter("permanent-address");
		String adharNumber = request.getParameter("nid-number");
		String password = request.getParameter("password");
		System.out.println(fullName);
		System.out.println(email);
		System.out.println(userName);
		System.out.println(phoneNumber);
		System.out.println(presentAddress);
		System.out.println(peramanentAddress);
		System.out.println(adharNumber);
		UserDto user = new UserDto();
		user.setAdharNumber(adharNumber);
		user.setUserName(userName);
		user.setEmail(email);
		user.setFullName(fullName);
		user.setPermanenetAddress(peramanentAddress);
		user.setPhoneNo(phoneNumber);
		user.setPresentAddress(presentAddress);
		user.setPssword(password);
		TaskManagementDao dao = new TaskManagementDao();
		try {
			dao.saveUser(user);
			//dao.saveTask();
			request.setAttribute("message", " Registered SuccessFully");
		} catch (Exception e) {
			request.setAttribute("message", " Not able to Signup Register Again");
		}
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}
