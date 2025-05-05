<%@page import="com.mypack_Entities.ComplaintsFeilds"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/BlankComplaintfetch.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100;400&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-solid-straight/css/uicons-solid-straight.css'>

<title>Blank-Complaint-Fetch</title>
</head>
<body>
	<%
	String userMail = (String) session.getAttribute("UserEmail").toString();
	%>
	<div class="container">
		<div class="nav-item">
			<div class="nav-2">
				<img src="images/user-logo.jpg" alt="not-found" class="ubon-img">
				<label for="" class="ubon-title">IRCTC CRM</label>
				<ul>
					<li><a href="BlankworkSpace_CRM.jsp"> <i
							class="fa-solid fa-ticket"></i> <label for="">PNR Enquiry</label>
					</a></li>

					<li><a href="Blankspot_train.jsp"> <i
							class="fa-solid fa-location-crosshairs"></i> <label for="">Spot
								Train</label>
					</a></li>

					<li><a href="BlankRunningStatus.jsp"> <i
							class="fa-solid fa-train-subway"></i> <label for="">Train
								Running Status</label>
					</a></li>

					<li class="active"><a href="BlankComplaintfetch.jsp"> <i class="fa-solid fa-info"></i> <label
							for="">Railmadad</label>
					</a></li>

					<li><a href="BlankFareandSeat.jsp"> <i class="fi fi-br-person-seat-reclined"></i>
							<label for="">Fare & Seat Availablity</label>
					</a></li>

					<li><a href=""> <i
							class="fa-solid fa-arrow-right-arrow-left"></i> <label for="">Train
								Between Station</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-location-dot"></i> <label
							for="">Live Station</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-train"></i> <label
							for="">UTS(Unreserved)</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-box-open"></i> <label
							for="">Parcel</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-ban"></i> <label
							for="">Exceptional Train</label>
					</a></li>

					<li><a href=""> <i class="fa-regular fa-clock"></i> <label
							for="">Train Schedule</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-map-location-dot"></i>
							<label for="">Station Detail</label>
					</a></li>

					<li><a href=""> <i class="fi fi-ss-subway"></i> <label
							for="">Station Time Table</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-truck"></i> <label
							for="">Train Class of Travel</label>
					</a></li>

					<li><a href=""> <i class="fa-solid fa-ticket-simple"></i>
							<label for="">POS Transaction</label>
					</a></li>
				</ul>
			</div>
			<div class="Log_container">
				<div class="Log-out" onclick="logoutPopup()">
					<img src="images/icons8-user-100.png" alt="not-found"
						class="log-img"> <label class="id-label"> <%=userMail%>
					</label><i class="fa-solid fa-chevron-right" id="right-arrow"
						onclick="logoutPopup()"></i>
				</div>
			</div>
		</div>

		<section class="main">
			<section>
				<div class="complaint-area">
					<div id="complaint-status">
						<a href="BlankComplaintfetch.jsp" class="currentPage">complaint status</a>
					</div>

					<div id="complaint-train">
						<a href="Train_Complaint.jsp" class="nonCurrentPage">train complaint</a>
					</div>

					<div id="complaint-station">
						<a href="Station_Complaint.jsp" class="nonCurrentPage">station complaint</a>
					</div>

				</div>
			</section>
	
			<%
			String id = request.getParameter("id");
		//	String msg = request.getParameter("msg");
									
			System.out.println("The Complaint id is : "+id);
		//	System.out.println("The Message is : "+msg);
			%>
	
			<h5 class="label-spot">Complaint Status</h5>
			<form action="FetchingComplaint" method="post"> <!-- ComplaintShow.jsp -->
				<div class="container-x">
					<div class="entryArea-1">
						<i class="fa-solid fa-ticket" id="train-logo"></i> <input
							type="search" required="required"
							placeholder="Enter reference Number" name="referenceNo"
							id="inputarea" value="<%=id%>">
						<div class="labelLine-1">Complaint ID</div>
						<button class="btn-1">get status</button>
					</div>
				</div>
			</form>
			
			<section>
				<div class="complaintBloack" style="margin-top: 50px;">
				
				<%
				
					Configuration cnf = new Configuration();
					cnf.configure("HiberConfigure.xml");
					
					SessionFactory sf = cnf.buildSessionFactory();
					
					Session s = sf.openSession();
					
					String fetch = "from ComplaintsFeilds where Id=:refNumber"; /*  */
					
					Query q = s.createQuery(fetch);
					q.setParameter("refNumber", id);
					
					List<ComplaintsFeilds> list = q.list();
					
					for(ComplaintsFeilds cf : list){
						
						if(cf.getId().equals(id)){
							System.out.println("id from user is : "+id);
							System.out.println("inDatabase : "+cf.getId());
							System.out.println("Both Equals.");
							
							%>
							
							
							
							<%
							
						}						
						
					%>
				
                    <div class="trainComplaintId">
                        <h4>Complaint Details : ID - <%=cf.getId()%></h4>
                    </div>
					<div class="complaintDetails">
						<div class="subComplaint1">
							<h5>Complaint</h5>
							<p><%=cf.getComplaintType() %></p>
						</div>
						
						<div class="subComplaint2">
							<h5>SubComplaint</h5>
							<p><%=cf.getSubComplaint() %></p>
						</div>
						
						<div class="subComplaint3">
							<h5>Division</h5>
							<p style="text-transform: uppercase;">dli</p>
						</div>

						<div class="subComplaint4">
							<h5>Zone</h5>
							<p style="text-transform: uppercase;">nr</p>
						</div>
						
						<div class="subComplaint5">
							<h5>Department</h5>
							<p>RPF</p>
						</div>	
					</div>

					<div class="IncidentArea">
						<div class="IncidentDate">
							<h6>Incident Date : <span><%=cf.getCurrDate()%></span></h6>
						</div>
						<div class="status">
							<h6>Status : <span>Forwarded</span></h6>
						</div>
					</div>
					<div class="remark">
						<h6>Remark</h6>
						<p>Please look into the matter</p>
					</div>
                </div>
			</section>
			<%
				}
		
			%>
		</section>
		
		
	</div>
	<form action="LogoutAction" method="post">
		<div class="logout-popup" onclick="logoutPopup()" id="log-pop">
			<img src="images/icons8-user-100.png" alt="not-found"
				class="log-img-2" height="40px" width="40px"> <label
				class="logout-label"> <%=userMail%>
			</label>
			<button class="btn-out-2">
				<i class="fa-solid fa-arrow-right-from-bracket" id="logout-icon"></i>LOGOUT
			</button>
		</div>
	</form>
	<script>
		//============== For Logout task perform onclick="logoutPopup()";========================

		function logoutPopup() {
			document.getElementById("log-pop").classList.toggle("active");
		}
	</script>
</body>
</html>