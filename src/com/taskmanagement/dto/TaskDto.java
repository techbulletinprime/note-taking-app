package com.taskmanagement.dto;

public class TaskDto {
	private String taskid;
	private String taskDescription;
	String userid;

	public TaskDto(String taskid, String taskDescription, String userid) {
		super();
		this.taskid = taskid;
		this.taskDescription = taskDescription;
		this.userid = userid;
	}
	public String getTaskid() {
		return taskid;
	}
	public void setTaskid(String taskid) {
		this.taskid = taskid;
	}
	public String getTaskDescription() {
		return taskDescription;
	}
	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	

}
