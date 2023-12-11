package com.dm.common;
import java.util.ArrayList;

public class RegisterDTO {
	private String id;
	private String pw;
	private String ismanager;
	
	public String getID() {
		return id;
	}
	
	public void setID(String id) {
		this.id = id;
	}
	
	public String getPW() {
		return pw;
	}
	
	public void setPW(String pw) {
		this.pw = pw;
	}
	
	public String getisManager() {
		return ismanager;
	}
	
	public void setisManager(String ismanager) {
		this.ismanager = ismanager;
	}
	
	public ArrayList<String> RegisterDTOtoArrayList(){
		ArrayList<String> a = new ArrayList<String>();
		a.add(this.id); a.add(this.pw); a.add(this.ismanager);
		return a;
	}
}
