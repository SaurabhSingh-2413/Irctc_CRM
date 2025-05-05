package com.mypack_Servalet;

import java.io.IOException;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.ComplaintsFeilds;

public class CompalintAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public CompalintAction() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String complaintTypes = request.getParameter("complaintTypes");
		String subComplaints = request.getParameter("SubcomplaintTypes");
		String pnrTypes = request.getParameter("ticketTypes");
		String pnrORuts = request.getParameter("ticketNumbers");
		int trainNumber = Integer.parseInt(request.getParameter("Tnumber"));
		String custMobile = request.getParameter("custMobilenumber");
		String curdate = request.getParameter("Dates");
		String complaints = request.getParameter("complaintArea");
		String Dates = request.getParameter("Dates");
		String stationName = request.getParameter("stationName");
		String trainComplaint = request.getParameter("trainComplaint");
		String stationComplaint = request.getParameter("stationComplaint");
		
		System.out.println("This is trainComplaint : "+trainComplaint);
		System.out.println("This is stationComplaint : "+stationComplaint);
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		ComplaintsFeilds cf = new ComplaintsFeilds();
		
		cf.setId(Dates+new Random().nextInt(1000));
		cf.setComplaintType(complaintTypes);
		cf.setSubComplaint(subComplaints);
		cf.setTicketTypes(pnrTypes);
		cf.setPNRorUTS(pnrORuts);
		cf.setTrainNumber(trainNumber);
		cf.setCust_MobileNumber(custMobile);
		cf.setCurrDate(new Date());
		cf.setComplaints(complaints);
		
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		Session s = sf.openSession();
		
		Transaction tx = s.beginTransaction();
		s.save(cf);
		
		tx.commit();
		
		String ids = cf.getId();   // Train_Complaint.jsp?ids="+ids+"
		
		if("trainComplaint".equals(trainComplaint)) {
			response.sendRedirect("Train_Complaint.jsp?id="+ids+"");
		}else if("stationComplaint".equals(stationComplaint)) {
			response.sendRedirect("Station_Complaint.jsp?id="+ids+"");
		}
		
		s.close();
		sf.close();
		
	}

}
