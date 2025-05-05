package com.mypack_Servalet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.AddEmails;

public class Fetching_mails extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Fetching_mails() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String email = request.getParameter("t1");
		String password = request.getParameter("p1");
		int flag = 0;
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		Session s = sf.openSession();
		
		String fetch = "from AddEmails";
	
// This is used to fetching entire data from the database.		
		Query q = s.createQuery(fetch);
		List<AddEmails> lists = q.list();
		
		for(AddEmails ad : lists)
		{
			String mails = ad.getEmails();
			String pass = ad.getPasswords();
			
			if(email.equals(mails) && password.equals(pass))
			{
				flag = 1;
			}
		}
		if(flag>=1)
		{
// now i am create a validate session and,
// sendRedirect email in workSpace_CRM.jsp's logout button.
			
			HttpSession hs = request.getSession();
			hs.setAttribute("UserEmail", email);
			response.sendRedirect("BlankworkSpace_CRM.jsp");
			
		}
		else {
			response.sendRedirect("index.jsp?msg=invalid");
		}
		s.close();
		sf.close();
	}

}
