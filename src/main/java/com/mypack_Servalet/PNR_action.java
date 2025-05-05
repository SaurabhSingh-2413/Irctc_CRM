package com.mypack_Servalet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.AddPNRs;
import com.mypack_Entities.Passenger_Details;

public class PNR_action extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PNR_action() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	
	// Trains Details.
		String pnr = request.getParameter("pnr");
	//	double pnr1 = Integer.parseInt(pnr);
		String trainNumber = request.getParameter("trainNumber");
		int trainNumber1 = Integer.parseInt(trainNumber);
		String trainName = request.getParameter("trainName");
		String boardStation = request.getParameter("boardStation");
		String boardInShort = request.getParameter("boardInShort");
		String departureDate = request.getParameter("departureDate");
		String departureTime = request.getParameter("departureTime");
		String boardPf = request.getParameter("boardPf");
		int boardPf1 = Integer.parseInt(boardPf);
		String timeTaken = request.getParameter("timeTaken");
		String totalKM = request.getParameter("totalKM");
		String destinationStation = request.getParameter("destinationStation");
		String destinationInShort = request.getParameter("destinationInShort");
		String arrivalDate = request.getParameter("arrivalDate");
		String arrivalTime = request.getParameter("arrivalTime");
		String destinationPf = request.getParameter("destinationPf");
		int destinationPf1 = Integer.parseInt(destinationPf);
		String ticketType = request.getParameter("ticketType");
		String ticketfare = request.getParameter("ticketfare");
		int ticketfare1 = Integer.parseInt(ticketfare);
		String classType = request.getParameter("classType");
		String classInShort = request.getParameter("classInShort");
		String quotaType = request.getParameter("quotaType");
		String bookingOn = request.getParameter("bookingOn");
		String chartStatus = request.getParameter("chartStatus");
		
		// Passengers Confirmation.
		String Total_Passengers = request.getParameter("Total_Passengers");
		int Total_Passengers1 = Integer.parseInt(Total_Passengers);
		
		// Passengers Details.
	/*	String snumber = request.getParameter("sNumber");
		int snumber1 = Integer.parseInt(snumber); */
		String passengerAge = request.getParameter("passengerAge");
		int passengerAge1 = Integer.parseInt(passengerAge);
		String ticketStatus = request.getParameter("ticketStatus");
		
		
		
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		AddPNRs ap = new AddPNRs();
		ap.setPNR(pnr);
		ap.setTrain_Number(trainNumber1);
		ap.setTrain_Name(trainName);
		ap.setBoard_Station(boardStation);
		ap.setShort_Board_Station(boardInShort);
		ap.setJourney_Date(departureDate);
		ap.setJourney_Time(departureTime);
		ap.setExpected_Board_Platform_number(boardPf1);
		ap.setTotal_jouney_Time(timeTaken);
		ap.setTotal_jouney_KiloMeters(totalKM);
		ap.setDestination_Station(destinationStation);
		ap.setShort_Destination_Station(destinationInShort);
		ap.setDestination_Date(arrivalDate);
		ap.setDestination_Time(arrivalTime);
		ap.setExpected_Destination_Platform_number(destinationPf1);
		ap.setTicket_Type(ticketType);
		ap.setTicket_Fare(ticketfare1);
		ap.setClasses(classType);
		ap.setClass_in_Short(classInShort);
		ap.setQuotas(quotaType);
		ap.setBooking_on(bookingOn);
		ap.setChart_Status(chartStatus);
				
		Passenger_Details pd = new Passenger_Details();
		Passenger_Details pd2 = new Passenger_Details();
		Passenger_Details pd3 = new Passenger_Details();
		Passenger_Details pd4 = new Passenger_Details();
		Passenger_Details pd5 = new Passenger_Details();
		Passenger_Details pd6 = new Passenger_Details();
		
		List<Passenger_Details> list = new ArrayList<Passenger_Details>();
		
		
		Session s = sf.openSession();
		
		Transaction tx = s.beginTransaction();
		
		if(Total_Passengers1==1)
		{
		//	pd.setS_NO(snumber1);
			pd.setS_NO(1);
			pd.setPassenger_Age(passengerAge1);
			pd.setCurrent_Status_OF_Tickets(ticketStatus);
			pd.setPNRs(ap);
			
			list.add(pd);
			
			s.save(ap);
			s.save(pd);
			
		}else if(Total_Passengers1==2)
		{
			String passengerAge2 = request.getParameter("passengerAge2");
			int passengerAge2_0 = Integer.parseInt(passengerAge2);
			String ticketStatus2 = request.getParameter("ticketStatus2");
			
//			pd.setS_NO(snumber1);
			pd.setS_NO(1);
			pd.setPassenger_Age(passengerAge1);
			pd.setCurrent_Status_OF_Tickets(ticketStatus);
			pd.setPNRs(ap);
			
			pd2.setS_NO(2);
			pd2.setPassenger_Age(passengerAge2_0);
			pd2.setCurrent_Status_OF_Tickets(ticketStatus2);
			pd2.setPNRs(ap);
			
			list.add(pd);
			list.add(pd2);
			
			s.save(ap);
			s.save(pd);
			s.save(pd2);
			
		}else if(Total_Passengers1==3) {
			String passengerAge2 = request.getParameter("passengerAge2");
			int passengerAge2_0 = Integer.parseInt(passengerAge2);
			String ticketStatus2 = request.getParameter("ticketStatus2");
			
			String passengerAge3 = request.getParameter("passengerAge3");
			int passengerAge3_0 = Integer.parseInt(passengerAge3);
			String ticketStatus3 = request.getParameter("ticketStatus3");
			
			pd.setS_NO(1);
			pd.setPassenger_Age(passengerAge1);
			pd.setCurrent_Status_OF_Tickets(ticketStatus);
			pd.setPNRs(ap);
			
			pd2.setS_NO(2);
			pd2.setPassenger_Age(passengerAge2_0);
			pd2.setCurrent_Status_OF_Tickets(ticketStatus2);
			pd2.setPNRs(ap);
			
			pd3.setS_NO(3);
			pd3.setPassenger_Age(passengerAge3_0);
			pd3.setCurrent_Status_OF_Tickets(ticketStatus3);
			pd3.setPNRs(ap);
			
			list.add(pd);
			list.add(pd2);
			list.add(pd3);
			
			s.save(ap);
			s.save(pd);
			s.save(pd2);
			s.save(pd3);
		}else if(Total_Passengers1==4) {
			String passengerAge2 = request.getParameter("passengerAge2");
			int passengerAge2_0 = Integer.parseInt(passengerAge2);
			String ticketStatus2 = request.getParameter("ticketStatus2");
			
			String passengerAge3 = request.getParameter("passengerAge3");
			int passengerAge3_0 = Integer.parseInt(passengerAge3);
			String ticketStatus3 = request.getParameter("ticketStatus3");
			
			String passengerAge4 = request.getParameter("passengerAge4");
			int passengerAge4_0 = Integer.parseInt(passengerAge4);
			String ticketStatus4 = request.getParameter("ticketStatus4");
			
			pd.setS_NO(1);
			pd.setPassenger_Age(passengerAge1);
			pd.setCurrent_Status_OF_Tickets(ticketStatus);
			pd.setPNRs(ap);
			
			pd2.setS_NO(2);
			pd2.setPassenger_Age(passengerAge2_0);
			pd2.setCurrent_Status_OF_Tickets(ticketStatus2);
			pd2.setPNRs(ap);
			
			pd3.setS_NO(3);
			pd3.setPassenger_Age(passengerAge3_0);
			pd3.setCurrent_Status_OF_Tickets(ticketStatus3);
			pd3.setPNRs(ap);
			
			pd4.setS_NO(4);
			pd4.setPassenger_Age(passengerAge4_0);
			pd4.setCurrent_Status_OF_Tickets(ticketStatus4);
			pd4.setPNRs(ap);
			
			list.add(pd);
			list.add(pd2);
			list.add(pd3);
			list.add(pd4);
			
			s.save(ap);
			s.save(pd);
			s.save(pd2);
			s.save(pd3);
			s.save(pd4);
		}else if(Total_Passengers1==5) {
			String passengerAge2 = request.getParameter("passengerAge2");
			int passengerAge2_0 = Integer.parseInt(passengerAge2);
			String ticketStatus2 = request.getParameter("ticketStatus2");
			
			String passengerAge3 = request.getParameter("passengerAge3");
			int passengerAge3_0 = Integer.parseInt(passengerAge3);
			String ticketStatus3 = request.getParameter("ticketStatus3");
			
			String passengerAge4 = request.getParameter("passengerAge4");
			int passengerAge4_0 = Integer.parseInt(passengerAge4);
			String ticketStatus4 = request.getParameter("ticketStatus4");
			
			String passengerAge5 = request.getParameter("passengerAge5");
			int passengerAge5_0 = Integer.parseInt(passengerAge5);
			String ticketStatus5 = request.getParameter("ticketStatus5");
			
			pd.setS_NO(1);
			pd.setPassenger_Age(passengerAge1);
			pd.setCurrent_Status_OF_Tickets(ticketStatus);
			pd.setPNRs(ap);
			
			pd2.setS_NO(2);
			pd2.setPassenger_Age(passengerAge2_0);
			pd2.setCurrent_Status_OF_Tickets(ticketStatus2);
			pd2.setPNRs(ap);
			
			pd3.setS_NO(3);
			pd3.setPassenger_Age(passengerAge3_0);
			pd3.setCurrent_Status_OF_Tickets(ticketStatus3);
			pd3.setPNRs(ap);
			
			pd4.setS_NO(4);
			pd4.setPassenger_Age(passengerAge4_0);
			pd4.setCurrent_Status_OF_Tickets(ticketStatus4);
			pd4.setPNRs(ap);
			
			pd5.setS_NO(5);
			pd5.setPassenger_Age(passengerAge5_0);
			pd5.setCurrent_Status_OF_Tickets(ticketStatus5);
			pd5.setPNRs(ap);
			
			list.add(pd);
			list.add(pd2);
			list.add(pd3);
			list.add(pd4);
			list.add(pd5);
			
			s.save(ap);
			s.save(pd);
			s.save(pd2);
			s.save(pd3);
			s.save(pd4);
			s.save(pd5);
		}else if(Total_Passengers1==6) {
			String passengerAge2 = request.getParameter("passengerAge2");
			int passengerAge2_0 = Integer.parseInt(passengerAge2);
			String ticketStatus2 = request.getParameter("ticketStatus2");
			
			String passengerAge3 = request.getParameter("passengerAge3");
			int passengerAge3_0 = Integer.parseInt(passengerAge3);
			String ticketStatus3 = request.getParameter("ticketStatus3");
			
			String passengerAge4 = request.getParameter("passengerAge4");
			int passengerAge4_0 = Integer.parseInt(passengerAge4);
			String ticketStatus4 = request.getParameter("ticketStatus4");
			
			String passengerAge5 = request.getParameter("passengerAge5");
			int passengerAge5_0 = Integer.parseInt(passengerAge5);
			String ticketStatus5 = request.getParameter("ticketStatus5");
			
			String passengerAge6 = request.getParameter("passengerAge6");
			int passengerAge6_0 = Integer.parseInt(passengerAge6);
			String ticketStatus6 = request.getParameter("ticketStatus6");
			
			pd.setS_NO(1);
			pd.setPassenger_Age(passengerAge1);
			pd.setCurrent_Status_OF_Tickets(ticketStatus);
			pd.setPNRs(ap);
			
			pd2.setS_NO(2);
			pd2.setPassenger_Age(passengerAge2_0);
			pd2.setCurrent_Status_OF_Tickets(ticketStatus2);
			pd2.setPNRs(ap);
			
			pd3.setS_NO(3);
			pd3.setPassenger_Age(passengerAge3_0);
			pd3.setCurrent_Status_OF_Tickets(ticketStatus3);
			pd3.setPNRs(ap);
			
			pd4.setS_NO(4);
			pd4.setPassenger_Age(passengerAge4_0);
			pd4.setCurrent_Status_OF_Tickets(ticketStatus4);
			pd4.setPNRs(ap);
			
			pd5.setS_NO(5);
			pd5.setPassenger_Age(passengerAge5_0);
			pd5.setCurrent_Status_OF_Tickets(ticketStatus5);
			pd5.setPNRs(ap);
			
			pd6.setS_NO(6);
			pd6.setPassenger_Age(passengerAge6_0);
			pd6.setCurrent_Status_OF_Tickets(ticketStatus6);
			pd6.setPNRs(ap);
			
			list.add(pd);
			list.add(pd2);
			list.add(pd3);
			list.add(pd4);
			list.add(pd5);
			list.add(pd6);
			
			s.save(ap);
			s.save(pd);
			s.save(pd2);
			s.save(pd3);
			s.save(pd4);
			s.save(pd5);
			s.save(pd6);
		}
				
		response.sendRedirect("set_PNR_information.jsp?msg=Data is submited successfully.");
		
		tx.commit();
		s.close();
		sf.close();
	}

}
