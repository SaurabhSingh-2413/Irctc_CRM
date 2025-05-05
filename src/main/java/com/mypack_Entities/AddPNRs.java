package com.mypack_Entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class AddPNRs {
	
	@Id
	private String PNR;
	private int Train_Number;
	private String Train_Name;
	private String Board_Station;
	private String Short_Board_Station;
	private String Journey_Date;
	private String Journey_Time;
	private int Expected_Board_Platform_number;
	private String Total_jouney_Time;
	private String Total_jouney_KiloMeters;
	private String Destination_Station;
	private String Short_Destination_Station;
	private String Destination_Date;
	private String Destination_Time;
	private int Expected_Destination_Platform_number;
	private String Ticket_Type; 
	private int Ticket_Fare;
	private String Classes;
	private String Class_in_Short;
	private String Quotas;
	private String Booking_on;
	private String Chart_Status;
	
	@OneToMany
	private List<Passenger_Details> pds;
	
	
	public String getPNR() {
		return PNR;
	}
	public void setPNR(String pnr1) {
		PNR = pnr1;
	}
	public int getTrain_Number() {
		return Train_Number;
	}
	public void setTrain_Number(int train_Number) {
		Train_Number = train_Number;
	}
	public String getTrain_Name() {
		return Train_Name;
	}
	public void setTrain_Name(String train_Name) {
		Train_Name = train_Name;
	}
	public String getBoard_Station() {
		return Board_Station;
	}
	public void setBoard_Station(String board_Station) {
		Board_Station = board_Station;
	}
	public String getShort_Board_Station() {
		return Short_Board_Station;
	}
	public void setShort_Board_Station(String short_Board_Station) {
		Short_Board_Station = short_Board_Station;
	}
	public String getJourney_Date() {
		return Journey_Date;
	}
	public void setJourney_Date(String journey_Date) {
		Journey_Date = journey_Date;
	}
	public String getJourney_Time() {
		return Journey_Time;
	}
	public void setJourney_Time(String journey_Time) {
		Journey_Time = journey_Time;
	}
	public int getExpected_Board_Platform_number() {
		return Expected_Board_Platform_number;
	}
	public void setExpected_Board_Platform_number(int expected_Board_Platform_number) {
		Expected_Board_Platform_number = expected_Board_Platform_number;
	}
	public String getTotal_jouney_Time() {
		return Total_jouney_Time;
	}
	public void setTotal_jouney_Time(String total_jouney_Time) {
		Total_jouney_Time = total_jouney_Time;
	}
	public String getTotal_jouney_KiloMeters() {
		return Total_jouney_KiloMeters;
	}
	public void setTotal_jouney_KiloMeters(String total_jouney_KiloMeters) {
		Total_jouney_KiloMeters = total_jouney_KiloMeters;
	}
	public String getDestination_Station() {
		return Destination_Station;
	}
	public void setDestination_Station(String destination_Station) {
		Destination_Station = destination_Station;
	}
	public String getShort_Destination_Station() {
		return Short_Destination_Station;
	}
	public void setShort_Destination_Station(String short_Destination_Station) {
		Short_Destination_Station = short_Destination_Station;
	}
	public String getDestination_Date() {
		return Destination_Date;
	}
	public void setDestination_Date(String destination_Date) {
		Destination_Date = destination_Date;
	}
	public String getDestination_Time() {
		return Destination_Time;
	}
	public void setDestination_Time(String destination_Time) {
		Destination_Time = destination_Time;
	}
	public int getExpected_Destination_Platform_number() {
		return Expected_Destination_Platform_number;
	}
	public void setExpected_Destination_Platform_number(int expected_Destination_Platform_number) {
		Expected_Destination_Platform_number = expected_Destination_Platform_number;
	}
	public String getTicket_Type() {
		return Ticket_Type;
	}
	public void setTicket_Type(String ticket_Type) {
		Ticket_Type = ticket_Type;
	}
	public int getTicket_Fare() {
		return Ticket_Fare;
	}
	public void setTicket_Fare(int ticket_Fare) {
		Ticket_Fare = ticket_Fare;
	}
	public String getClasses() {
		return Classes;
	}
	public void setClasses(String classes) {
		Classes = classes;
	}
	public String getClass_in_Short() {
		return Class_in_Short;
	}
	public void setClass_in_Short(String class_in_Short) {
		Class_in_Short = class_in_Short;
	}
	public String getQuotas() {
		return Quotas;
	}
	public void setQuotas(String quotas) {
		Quotas = quotas;
	}
	public String getBooking_on() {
		return Booking_on;
	}
	public void setBooking_on(String booking_on) {
		Booking_on = booking_on;
	}
	public String getChart_Status() {
		return Chart_Status;
	}
	public void setChart_Status(String chart_Status) {
		Chart_Status = chart_Status;
	}
	
	public List<Passenger_Details> getPds() {
		return pds;
	}
	public void setPds(List<Passenger_Details> pds) {
		this.pds = pds;
	}
	/*
	@Override
	public String toString() {
		return "AddPNRs [PNR=" + PNR + ", Train_Number=" + Train_Number + ", Train_Name=" + Train_Name
				+ ", Board_Station=" + Board_Station + ", Short_Board_Station=" + Short_Board_Station
				+ ", Journey_Date=" + Journey_Date + ", Journey_Time=" + Journey_Time
				+ ", Expected_Board_Platform_number=" + Expected_Board_Platform_number + ", Total_jouney_Time="
				+ Total_jouney_Time + ", Total_jouney_KiloMeters=" + Total_jouney_KiloMeters + ", Destination_Station="
				+ Destination_Station + ", Short_Destination_Station=" + Short_Destination_Station
				+ ", Destination_Date=" + Destination_Date + ", Destination_Time=" + Destination_Time
				+ ", Expected_Destination_Platform_number=" + Expected_Destination_Platform_number + ", Ticket_Type="
				+ Ticket_Type + ", Ticket_Fare=" + Ticket_Fare + ", Classes=" + Classes + ", Class_in_Short="
				+ Class_in_Short + ", Quotas=" + Quotas + ", Booking_on=" + Booking_on + ", Chart_Status="
				+ Chart_Status + ", pds=" + pds + "]";
	} */
	@Override
	public String toString() {
		return PNR  ;
	}
	
	
	
}
