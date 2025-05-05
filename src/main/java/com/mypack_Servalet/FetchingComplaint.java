package com.mypack_Servalet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.ComplaintsFeilds;

public class FetchingComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FetchingComplaint() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
		
		String reference = request.getParameter("referenceNo");
		String id = "";
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		Session s = sf.openSession();
		
		String fetch = "from ComplaintsFeilds where Id=:refNumber";
		
		Query q = s.createQuery(fetch);
		q.setParameter("refNumber", reference);
		
		List<ComplaintsFeilds> list = q.list();
		
		for(ComplaintsFeilds cf : list) {
			if (cf.getId().equals(reference)) {
				
				System.out.println("This is Complaints");
				System.out.println(cf.getId());
				System.out.println(cf.getComplaintType());
				System.out.println(cf.getSubComplaint());
				System.out.println(cf.getCurrDate());
				System.out.println(cf.getComplaints());
				id = cf.getId();
				
			}
		}
		System.out.println("The id : "+id);
		System.out.println("The reference : "+reference);
		
		
		response.sendRedirect("BlankComplaintfetch.jsp?id="+id+"");
		
		s.close();
		sf.close();
	}

}
