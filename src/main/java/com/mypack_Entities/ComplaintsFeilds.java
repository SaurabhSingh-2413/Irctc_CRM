package com.mypack_Entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class ComplaintsFeilds {
	@javax.persistence.Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	private String Id;
	private String ComplaintType;
	private String SubComplaint;
	private String TicketTypes;
	private String PNRorUTS;
	private int TrainNumber;
	private String Cust_MobileNumber;
	private Date currDate;
	private String Complaints;
	
	
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getComplaintType() {
		return ComplaintType;
	}
	public void setComplaintType(String complaintType) {
		ComplaintType = complaintType;
	}
	public String getSubComplaint() {
		return SubComplaint;
	}
	public void setSubComplaint(String subComplaint) {
		SubComplaint = subComplaint;
	}
	public String getTicketTypes() {
		return TicketTypes;
	}
	public void setTicketTypes(String ticketTypes) {
		TicketTypes = ticketTypes;
	}
	public String getPNRorUTS() {
		return PNRorUTS;
	}
	public void setPNRorUTS(String pNRorUTS) {
		PNRorUTS = pNRorUTS;
	}
	public int getTrainNumber() {
		return TrainNumber;
	}
	public void setTrainNumber(int trainNumber) {
		TrainNumber = trainNumber;
	}
	public String getCust_MobileNumber() {
		return Cust_MobileNumber;
	}
	public void setCust_MobileNumber(String cust_MobileNumber) {
		Cust_MobileNumber = cust_MobileNumber;
	}
	public Date getCurrDate() {
		return currDate;
	}
	public void setCurrDate(Date currDate) {
		this.currDate = currDate;
	}
	public String getComplaints() {
		return Complaints;
	}
	public void setComplaints(String complaints) {
		Complaints = complaints;
	}
	
	@Override
	public String toString() {
		return "ComplaintsFeilds [Id=" + Id + ", ComplaintType=" + ComplaintType + ", SubComplaint=" + SubComplaint
				+ ", TicketTypes=" + TicketTypes + ", PNRorUTS=" + PNRorUTS + ", TrainNumber=" + TrainNumber
				+ ", Cust_MobileNumber=" + Cust_MobileNumber + ", currDate=" + currDate + ", Complaints=" + Complaints
				+ "]";
	}
		
	
}
