package com.taskmanagement.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public static Connection getMysqlDbConnection() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanagement", "root", "root");
			// here sonoo is database name, root is username and password
		
		} catch (Exception e) {
			System.out.println(e);
		}
		if(con!=null)
		return con;
		else throw new RuntimeException("Unable to get a connection");
	}

}
