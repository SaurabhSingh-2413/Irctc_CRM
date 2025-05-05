package com.mypack_Servalet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.mypack_Entities.AddEmails;

public class Example extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Example() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		try {
		
		String text = request.getParameter("t1");
		String pass = request.getParameter("p1");
		
		System.out.println("UserName : "+text);
		System.out.println("Password : "+pass);
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		Session s = sf.openSession();
		
		AddEmails data = new AddEmails();
		data.setEmails(text);
		data.setPasswords(pass);
		
		Transaction tx = s.beginTransaction();
		s.save(data);
		
		if(text.equals(" "))
		{
			System.out.println("Data not insert.");
			System.out.println("UserName : "+text);
			System.out.println("Password : "+pass);
			response.sendRedirect("addEmails.jsp?msg=NOT-INSERTED");
			
		}else {
			System.out.println("Data is insert successfully.");
			System.out.println("UserName : "+text);
			System.out.println("Password : "+pass);
			response.sendRedirect("addEmails.jsp?msg2=INSERTED");
			
		}
		
		tx.commit();
		s.close();
		sf.close();
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
