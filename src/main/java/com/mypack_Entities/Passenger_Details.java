package com.mypack_Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Passenger_Details {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Total_datas;
	private int S_NO;
	private int Passenger_Age;
	private String Current_Status_OF_Tickets;
	@ManyToOne
	private AddPNRs PNRs;
	
	
	public int getTotal_datas() {
		return Total_datas;
	}
	public void setTotal_datas(int total_datas) {
		Total_datas = total_datas;
	}
	public int getS_NO() {
		return S_NO;
	}
	public void setS_NO(int s_NO) {
		S_NO = s_NO;
	}
	public int getPassenger_Age() {
		return Passenger_Age;
	}
	public void setPassenger_Age(int passenger_Age) {
		Passenger_Age = passenger_Age;
	}
	public String getCurrent_Status_OF_Tickets() {
		return Current_Status_OF_Tickets;
	}
	public void setCurrent_Status_OF_Tickets(String current_Status_OF_Tickets) {
		Current_Status_OF_Tickets = current_Status_OF_Tickets;
	}
	public AddPNRs getPNRs() {
		return PNRs;
	}
	public void setPNRs(AddPNRs pNRs) {
		PNRs = pNRs;
	}
	@Override
	public String toString() {
		return "Passenger_Details [Total_datas=" + Total_datas + ", S_NO=" + S_NO + ", Passenger_Age=" + Passenger_Age
				+ ", Current_Status_OF_Tickets=" + Current_Status_OF_Tickets + ", PNRs=" + PNRs + "]";
	}
	
	
	
}
