<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/addEmails.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> <!-- for fonts -->
	
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" /> <!-- for icons -->
	
<title>ADD-EMAILS</title>
</head>
<body>

<!-- step 1 : add the emails into database.
	 step 2 : and after login index.jsp.
	 step 3 : index.jsp sendRedirect to servalet.
 	 step 4 : And after come servalet page then fetch the data
		from the database and user is exist then login,otherwise
		not exist then show messages..
	 step 5 : Create a session validate for login in the servalet page.
 -->
 
<form action="Example" method="post">
<%
 String valid = request.getParameter("msg2");
 String notvalid = request.getParameter("msg");
	
	System.out.println(valid+" "+notvalid);
	
// Don't create 2 if contidion at same time.and
// This message is show only on page search box.
// example - http://localhost:8080/Irctc_CRMeithMaven/addEmails.jsp?msg2=INSERTED
	 if("INSERTED".equals(valid)){
		 %>
		 <h5>Data inserted successfully.</h5>
		 <% 
	 }else{
		 %>
		 <h5>Data not inserted.</h5>
		<%
	 }
 %>
<div class="conatiner-1">
			<div class="brand-label">
				<h2>IRCTC CRM</h2>
				<div class="sign-label">
					<h6>Add email into database</h6>
					<div class="container-2">
						
						<div class="entryArea-1">
							<i class="fa-solid fa-user"></i><input type="text" 
								required="required" name="t1">
							<div class="labelLine-1">Username</div>
						</div>
						<div class="entryArea-2">
							<i class="fa-solid fa-unlock-keyhole"></i> <input type="password"
								required="required" name="p1">
							<div class="labelLine-2">Password</div>
						</div>
						<button class="btn-1" type="submit">ADD</button>
					</div>
				</div>
			</div>
		</div>
</form>
</body>
</html>