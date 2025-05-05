package com.mypack_Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class AddEmails {

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Id;
	private String Emails;
	private String Passwords;
	
// This is getters and setters.
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getEmails() {
		return Emails;
	}
	public void setEmails(String emails) {
		Emails = emails;
	}
	public String getPasswords() {
		return Passwords;
	}
	public void setPasswords(String passwords) {
		Passwords = passwords;
	}
	
	@Override
	public String toString() {
		return "AddEmails [Id=" + Id + ", Emails=" + Emails + ", Passwords=" + Passwords + "]";
	}
	

}
