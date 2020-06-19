package com.example.dto;

public class memberDTO {
	String mem_id;
	String mem_passwd;
	String mem_nickname;
	String mem_ph;
	String mem_aut;
	
	public memberDTO(String id, String passwd, String nickname, String ph, String aut) {
		mem_id = id;
		mem_passwd = passwd;
		mem_nickname = nickname;
		mem_ph = ph;
		mem_aut = aut;
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_passwd() {
		return mem_passwd;
	}
	public void setMem_passwd(String mem_passwd) {
		this.mem_passwd = mem_passwd;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getMem_ph() {
		return mem_ph;
	}
	public void setMem_ph(String mem_ph) {
		this.mem_ph = mem_ph;
	}
	public String getMem_aut() {
		return mem_aut;
	}
	public void setMem_aut(String mem_aut) {
		this.mem_aut = mem_aut;
	}
	
	public String toString() {
		return "[mem_id : " + mem_id + "], [mem_passwd : " + mem_passwd + "], [mem_nickname : " + mem_nickname + "], [mem_ph : " + mem_ph + "], [mem_aut : " + mem_aut + "]";
	}
}
