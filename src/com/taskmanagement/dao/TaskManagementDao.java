package com.taskmanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.taskmanagement.db.ConnectionFactory;
import com.taskmanagement.dto.TaskDto;
import com.taskmanagement.dto.UserDto;

public class TaskManagementDao {
	public static final String SQL_INSERT_USER = "INSERT INTO USER (USERNAME, FULLNAME, EMAIL,PASSWORD,PRESENTADDRESS,PERMANENTADDRESS,ADHARNUMBER) VALUES (?,?,?,?,?,?,?)";
	public static final String SQL_INSERT_TASK = "INSERT INTO TASK (TASKDESCRIPTION, CREATIONDATE, UPDATEDATE,USERID,TASKID) VALUES (?,?,?,?,?)";
	public static final String SQL_UPDATE_TASK = "UPDATE  TASK SET TASKDESCRIPTION=?, UPDATEDATE=? WHERE USERID=? AND TASKID=?";
	public static final String SQL_FETCH_TASK_BY_ID_TASK = "SELECT   TASKDESCRIPTION,CREATIONDATE,UPDATEDATE WHERE USERID=?";
	

	public void saveTask(TaskDto task) {
		try {

			Connection con = ConnectionFactory.getMysqlDbConnection();
			PreparedStatement preparedStatement = con.prepareStatement(SQL_INSERT_TASK);

			preparedStatement.setString(1, task.getTaskDescription());
			preparedStatement.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
			preparedStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			preparedStatement.setString(4, task.getUserid());
			preparedStatement.setString(5, task.getTaskid());
			
			// preparedStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			int row = 0;
			row = preparedStatement.executeUpdate();

			if (row != 0) {
				System.out.println("Task Inserted Successfully");
			} else {
				System.out.println("Not able to insert Task");
			}
		} catch (Exception e) {
			System.out.println("Database exception occcquered  "+e.getMessage());
		}
		
		
	}

	public void updateTask(TaskDto task) throws Exception {
		try {

			Connection con = ConnectionFactory.getMysqlDbConnection();
			PreparedStatement preparedStatement = con.prepareStatement(SQL_UPDATE_TASK);

			preparedStatement.setString(1, task.getTaskDescription());
			preparedStatement.setTimestamp(2, Timestamp.valueOf(LocalDateTime.now()));
			preparedStatement.setString(3, task.getUserid());
			preparedStatement.setString(4, task.getTaskid());
			
			// preparedStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			int row = 0;
			row = preparedStatement.executeUpdate();

			if (row != 0) {
				System.out.println("Task Updated Successfully");
			} else {
				System.out.println("Not able to update Task");
			}
		} catch (Exception e) {
			System.out.println("Database exception occcquered  "+e.getMessage());
		}
		
		
	}
	
	public void saveUser(UserDto userdto) throws Exception {
		try {

			Connection con = ConnectionFactory.getMysqlDbConnection();
			PreparedStatement preparedStatement = con.prepareStatement(SQL_INSERT_USER);

			preparedStatement.setString(1, userdto.getUserName());
			preparedStatement.setString(2, userdto.getFullName());
			preparedStatement.setString(3, userdto.getEmail());
			preparedStatement.setString(4, userdto.getPssword());
			preparedStatement.setString(5, userdto.getPresentAddress());
			preparedStatement.setString(6, userdto.getPermanenetAddress());
			preparedStatement.setString(7, userdto.getAdharNumber());
			// preparedStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			int row = 0;
			row = preparedStatement.executeUpdate();

			if (row != 0) {
				System.out.println("Inserted Successfully");
			} else {
				System.out.println("Not able to insert");
			}
		} catch (Exception e) {
			System.out.println("Database exception occcquered "+e.getMessage());
		}
		
		
	}
	public void fetchTaskById(UserDto userdto) throws Exception {
		try {

			Connection con = ConnectionFactory.getMysqlDbConnection();
			PreparedStatement preparedStatement = con.prepareStatement(SQL_FETCH_TASK_BY_ID_TASK);

			preparedStatement.setString(1, userdto.getUserName());
		
			// preparedStatement.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			int row = 0;
			ResultSet rs = preparedStatement.executeQuery();
			

			if (row != 0) {
				System.out.println("Inserted Successfully");
			} else {
				System.out.println("Not able to insert");
			}
		} catch (Exception e) {
			System.out.println("Database exception occcquered "+e.getMessage());
		}
		
		
	}
	public static void main(String[]args)throws Exception {
		
		TaskDto dto=new TaskDto();
		dto.setTaskDescription("Angular video need to be uploaded");
		dto.setTaskid("123");
		dto.setUserid("rajan");
		TaskManagementDao dao=new TaskManagementDao();
		dao.updateTask(dto);
	}

}
