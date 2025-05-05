package com.mypack_Servalet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.AddPNRs;

public class RunningStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RunningStatus() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	//	String RunningTrain1 = request.getParameter("RunningTrain");
		int RunningTrain = Integer.parseInt(request.getParameter("RunningTrain"));
		System.out.println("Running-Train Number : "+RunningTrain);
		
		int flag = 0;
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		Session s = sf.openSession();
		
		String fetch = "from AddPNRs";
		
		Query q = s.createQuery(fetch);
		
		List<AddPNRs> list = q.list();
		
		for(AddPNRs ap : list) {
			
			if(RunningTrain == ap.getTrain_Number()) {
				
				flag = 1;
				
			}
			
		}
		if(flag==1) {
			System.out.println("Equal : "+RunningTrain);
			response.sendRedirect("RunningStatus.jsp?RunningTrain2="+RunningTrain+"");
		//	RequestDispatcher rd = request.getRequestDispatcher("RunningStatus.jsp=?"+RunningTrain);
		//	rd.forward(request, response);
		}
		else {
			System.out.println("Not Equal : "+RunningTrain);
			response.sendRedirect("BlankRunningStatus.jsp?msg=invalidnumber");
		}
		
		s.close();
		sf.close();
	}

}
