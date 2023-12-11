package com.dm.common;

public class JobDTO {
	private String location;
	private String title;
	private String company;
	private int job_time;
	private String career;
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getJob_time() {
		return job_time;
	}
	public void setJob_time(int job_time) {
		this.job_time = job_time;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
}
