package com.mypack_Servalet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LogoutAction() {
        super();  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		HttpSession hs = request.getSession();
		hs.invalidate();
		response.sendRedirect("index.jsp");
	}

}
