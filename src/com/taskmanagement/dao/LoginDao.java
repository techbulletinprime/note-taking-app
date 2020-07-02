package com.taskmanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.taskmanagement.db.ConnectionFactory;

public class LoginDao {
	public static final String FETCH_USER = "SELECT COUNT(*) FROM USER WHERE USERNAME=? AND PASSWORD=?";

	public int doLogin(String userName, String password) {
		int rowcount=0;
		System.out.println("Received userName" + userName);
		System.out.println("Received password" + password);
		try {

			Connection con = ConnectionFactory.getMysqlDbConnection();
			PreparedStatement preparedStatement = con.prepareStatement(FETCH_USER);
			preparedStatement.setString(1, userName);
			preparedStatement.setString(2, password);
			ResultSet rs=preparedStatement.executeQuery();
			if(rs.next()){
				rowcount = rs.getInt(1);
				}
			 
		} catch (Exception e) {
			System.out.println("Exception Occquered" + e.toString());
		}finally {
			return rowcount;
		}
	}

}
