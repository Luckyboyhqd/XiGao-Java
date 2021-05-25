package com.by.entity;

import java.util.Date;

public class Goods {
	private int g_id;
	private String identity,name,location,time,state;
	private Date start;
	public int getG_id() {
		return g_id;
	}
	public void setG_id(int g_id) {
		this.g_id = g_id;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	@Override
	public String toString() {
		return "Goods [g_id=" + g_id + ", identity=" + identity + ", name=" + name + ", location=" + location
				+ ", time=" + time + ", state=" + state + ", start=" + start + "]";
	}
	
	public Goods() {
		
	}
	
	
}
