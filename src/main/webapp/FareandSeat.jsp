<%@page import="com.mypack_Entities.AddPNRs"%>
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
<link rel="stylesheet" href="css/FareandSeat.css">
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
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>

<title>Blank-Fare-and-Seat</title>
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

					<li><a href="BlankComplaintfetch.jsp"> <i
							class="fa-solid fa-info"></i> <label for="">Railmadad</label>
					</a></li>

					<li class="active"><a href="BlankFareandSeat.jsp"> <i class="fi fi-br-person-seat-reclined"></i>
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

<%
		String sourceStation = request.getParameter("srcStation");
		String destinationStation  = request.getParameter("dstiStation");
		String jrnyDate = request.getParameter("jrnydate");
		//int flag=0;
		
		/* Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		Session s = sf.openSession();
		
		String fetch = "from AddPNRs";
		
		Query q = s.createQuery(fetch);
		
		List<AddPNRs> list = q.list();
		
		for(AddPNRs ap : list) {
			
			if(sourceStation.equals(ap.getBoard_Station()) && ){
				flag = 1;
			}
		} */

%>

		<section class="main">
			<section>
				<div id="ReservationBlock">
					<div class="ReservedFair">
						<a href="BlankFareandSeat.jsp" class="currentPage">reserved</a>
					</div>

					<div class="UneservedFair">
						<a href="BlankUnreserved.jsp" class="nonCurrentPage">unreserved</a>
					</div>
				</div>
				<section>
					<div id="ReservedFareEnquiryTag">
						<h5>Reserved Fare Enquiry</h5>
					</div>

					<form action=" ">
						<div id="InputsButtonBlock">
							<div class="entryArea-1">
								<i class="fa-solid fa-location-arrow" id="train-logo"></i> <input
									type="search" required="required"
									placeholder="Enter reference Number" name="sourceStation"
									id="inputarea" value="<%=sourceStation %>">
								<div class="labelLine-1">Source Station</div>
							</div>
							<div class="entryArea-1">
								<i class="fa-solid fa-location-dot" id="train-logo"></i> <input
									type="search" required="required"
									placeholder="Enter reference Number" name="destinationStation"
									id="inputarea" value="<%=destinationStation %>">
								<div class="labelLine-1">Destination Station</div>
							</div>
							<div class="entryArea-1">
								<i class="fa-regular fa-calendar-days" id="train-logo"></i> <input
									type="date" value="<%=jrnyDate %>">
								<!-- <div class="labelLine-1">Journey Date</div> -->
								<button class="btn-1">get status</button>
							</div>
						</div>
					</form>
					<div id="totalTrainCount">
						<h5>Train Found : 2</h5>
					</div>
					<div id="durationArrival">
						<p class="Departure" id="d1">
							<i class="fa-solid fa-angle-up"></i>Departure
						</p>
						<p class="Duration" id="d1">Duration</p>
						<p class="Arrival" id="d1">Arrival</p>
					</div>
				</section>
			</section>

			<!-- ================================ Searched Train Bloack ===================================== -->

			<section>
				<div id="status-1">
					<div id="trainwithweek">
						<div class="traindetails">
							<div class="traindetails-1">
								<p>
									<span class="traiNumberBold">#19702</span> <span
										class="trainNameBold">sainik express</span> <span
										class="trainNameLight">sainik express</span>
								</p>
							</div>
						</div>
						<div class="weeks">
							<p>m</p>
							<p>t</p>
							<p>w</p>
							<p>t</p>
							<p>f</p>
							<p>s</p>
							<p>s</p>
						</div>
					</div>
					<div id="sourceDestination">
						<div class="sourceDestination2">
							<h5>
								<span class="src"><%=sourceStation %></span> | <span class="dateTime">06-dec-2024
									00:07</span>
							</h5>
							<h6>
								: 6 hrs 35 mins <span>(332 km)</span> :
							</h6>
							<h5>
								<span class="desti"><%=destinationStation %></span> | <span class="dateTime">06-dec-2024
									06:10</span>
							</h5>
						</div>
					</div>
					<div id="coachClasses">
						<p onclick="selectaction1();" class="selectClass">first ac
							(1a)</p>
						<p onclick="selectaction2();" class="selectClass2">2a (2a)</p>
						<p onclick="selectaction3();" class="selectClass3">3a (3a)</p>
						<p onclick="selectaction4();" class="selectClass4">sleeper
							(sl)</p>
					</div>
					<div id="quotas">
						<p onclick="selectQuota();" id="selectQuotas"
							style="padding-top: 3px;">general</p>
						<p style="padding-top: 3px;">tatkal</p>
						<p style="padding-top: 3px;">ladies</p>
						<p style="padding-top: 3px;">premium tatkal</p>
						<p style="padding-top: 3px;">senior citizen</p>
						<p style="padding-top: 3px;">handicapped</p>
					</div>
					<!-- ============================= 1. fare and its availablity =========================================== -->
					<div id="checkDateSeat">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.5000<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.5000</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity">train departed</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity">not available</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl139/wl58</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl109/wl12</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl19/wl5</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>
					<!-- ============================= 2. fare and its availablity =========================================== -->
					<div id="checkDateSeat2">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.4500<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.4500</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-201</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity">Not available</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-222</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl109/wl12</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-01</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>
					<!-- ============================= 3. fare and its availablity =========================================== -->
					<div id="checkDateSeat3">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.2000<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.2000</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity">train departed</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity">not available</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl139/wl58</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl109/wl12</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl19/wl5</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>
					<!-- ============================= 4. fare and its availablity =========================================== -->
					<div id="checkDateSeat4">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.1200<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.1200</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity">train departed</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity">not available</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl139/wl58</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl109/wl12</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl19/wl5</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>

				</div>
				<!--status-1 -->


			</section>

			<section>
				<div id="status-1">
					<div id="trainwithweek">
						<div class="traindetails">
							<div class="traindetails-1">
								<p>
									<span class="traiNumberBold">#20473</span> <span
										class="trainNameBold">CHETAK EXPRESS</span> <span
										class="trainNameLight">CHETAK EXPRESS</span>
								</p>
							</div>
						</div>
						<div class="weeks">
							<p>m</p>
							<p style="color: rgb(99, 99, 99);">t</p>
							<p>w</p>
							<p>t</p>
							<p style="color: rgb(99, 99, 99);">f</p>
							<p>s</p>
							<p>s</p>
						</div>
					</div>
					<div id="sourceDestination">
						<div class="sourceDestination2">
							<h5>
								<span class="src"><%=sourceStation %></span> | <span class="dateTime">06-dec-2024
									19:40</span>
							</h5>
							<h6>
								: 3 hrs 35 mins <span>(329 km)</span> :
							</h6>
							<h5>
								<span class="desti"><%=destinationStation %></span> | <span class="dateTime">06-dec-2024
									23:33</span>
							</h5>
						</div>
					</div>
					<div id="coachClasses">
						<p onclick="selectaction5();" class="selectClass5">first ac
							(1a)</p>
						<p onclick="selectaction6();" class="selectClass6">2a (2a)</p>
						<p onclick="selectaction7();" class="selectClass7">3a (3a)</p>
						<p onclick="selectaction8();" class="selectClass8">sleeper
							(sl)</p>
					</div>
					<div id="quotas">
						<p onclick="selectQuota();" id="selectQuotas"
							style="padding-top: 3px;">general</p>
						<p style="padding-top: 3px;">tatkal</p>
						<p style="padding-top: 3px;">ladies</p>
						<p style="padding-top: 3px;">premium tatkal</p>
						<p style="padding-top: 3px;">senior citizen</p>
						<p style="padding-top: 3px;">handicapped</p>
					</div>
					<!-- ============================= 1. fare and its availablity =========================================== -->
					<div id="checkDateSeat5">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.5000<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.5000</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity">train departed</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-205</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl139/wl58</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-225</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-250</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>
					<!-- ============================= 2. fare and its availablity =========================================== -->
					<div id="checkDateSeat6">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.4500<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.4500</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-14</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-20</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-67</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-45</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-01</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity" style="color: #4caf50;">Available-201</p>
							</div>
						</div>
					</div>
					<!-- ============================= 3. fare and its availablity =========================================== -->
					<div id="checkDateSeat7">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.2000<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.2000</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity">train departed</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity">not available</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl139/wl58</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl109/wl12</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl19/wl5</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>
					<!-- ============================= 4. fare and its availablity =========================================== -->
					<div id="checkDateSeat8">
						<div class="fare">
							<p id="ticketFare">
								Fare : Rs.1200<i class='bx bx-info-circle'
									onclick="openFareDeatil()"></i>
							</p>
							<div id="fareDetails">
								<p>Ticket Fare : Rs.1200</p>
								<p>Tax : 30</p>
								<p>Charges : 20</p>
								<p>Catering : 30</p>
							</div>
						</div>
						<div class="dateAvailable">
							<div class="dateAvailable1">
								<p>10-dec-2024</p>
								<p id="trainSeatAvailablity">train departed</p>
							</div>
							<div class="dateAvailable2">
								<p>11-dec-2024</p>
								<p id="trainSeatAvailablity">not available</p>
							</div>
							<div class="dateAvailable3">
								<p>12-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl139/wl58</p>
							</div>
							<div class="dateAvailable4">
								<p>13-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl109/wl12</p>
							</div>
							<div class="dateAvailable5">
								<p>14-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl19/wl5</p>
							</div>
							<div class="dateAvailable6">
								<p>15-dec-2024</p>
								<p id="trainSeatAvailablity">gnwl39/wl8</p>
							</div>
						</div>
					</div>

				</div>
				<!--status-1 -->


			</section>



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

		function logoutPopup() { // This is used for logout.
			document.getElementById("log-pop").classList.toggle("active");
		}

		function selectaction1() { // This is Classes like 1AC,2Ac etc.
			document.querySelector('.selectClass').style.backgroundColor = 'rgb(230, 255, 230)';
			document.getElementById("checkDateSeat").classList.toggle("active");
			document.querySelector('.selectClass2').style.backgroundColor = 'white';
			document.querySelector('.selectClass3').style.backgroundColor = 'white';
			document.querySelector('.selectClass4').style.backgroundColor = 'white';
		}

		function selectaction2() {
			document.querySelector('.selectClass2').style.backgroundColor = 'rgb(230, 255, 230)';
			document.querySelector('#checkDateSeat2').classList
					.toggle("active");
			document.querySelector('.selectClass').style.backgroundColor = 'white';
			document.querySelector('.selectClass3').style.backgroundColor = 'white';
			document.querySelector('.selectClass4').style.backgroundColor = 'white';
		}

		function selectaction3() {
			document.querySelector('.selectClass3').style.backgroundColor = 'rgb(230, 255, 230)';
			document.querySelector('#checkDateSeat3').classList
					.toggle("active");
			document.querySelector('.selectClass').style.backgroundColor = 'white';
			document.querySelector('.selectClass2').style.backgroundColor = 'white';
			document.querySelector('.selectClass4').style.backgroundColor = 'white';
		}

		function selectaction4() {
			document.querySelector('.selectClass4').style.backgroundColor = 'rgb(230, 255, 230)';
			document.querySelector('#checkDateSeat4').classList
					.toggle("active");
			document.querySelector('.selectClass').style.backgroundColor = 'white';
			document.querySelector('.selectClass2').style.backgroundColor = 'white';
			document.querySelector('.selectClass3').style.backgroundColor = 'white';
		}

		function selectaction5() { // This is Classes like 1AC,2Ac etc.
			document.querySelector('.selectClass5').style.backgroundColor = 'rgb(230, 255, 230)';
			document.getElementById("checkDateSeat5").classList
					.toggle("active");
			document.querySelector('.selectClass6').style.backgroundColor = 'white';
			document.querySelector('.selectClass7').style.backgroundColor = 'white';
			document.querySelector('.selectClass8').style.backgroundColor = 'white';
		}

		function selectaction6() {
			document.querySelector('.selectClass6').style.backgroundColor = 'rgb(230, 255, 230)';
			document.querySelector('#checkDateSeat6').classList
					.toggle("active");
			document.querySelector('.selectClass5').style.backgroundColor = 'white';
			document.querySelector('.selectClass7').style.backgroundColor = 'white';
			document.querySelector('.selectClass8').style.backgroundColor = 'white';
		}

		function selectaction7() {
			document.querySelector('.selectClass7').style.backgroundColor = 'rgb(230, 255, 230)';
			document.querySelector('#checkDateSeat7').classList
					.toggle("active");
			document.querySelector('.selectClass5').style.backgroundColor = 'white';
			document.querySelector('.selectClass6').style.backgroundColor = 'white';
			document.querySelector('.selectClass8').style.backgroundColor = 'white';
		}

		function selectaction8() {
			document.querySelector('.selectClass8').style.backgroundColor = 'rgb(230, 255, 230)';
			document.querySelector('#checkDateSeat8').classList
					.toggle("active");
			document.querySelector('.selectClass5').style.backgroundColor = 'white';
			document.querySelector('.selectClass6').style.backgroundColor = 'white';
			document.querySelector('.selectClass7').style.backgroundColor = 'white';
		}

		function selectQuota() { // This is Quotas like- general ,ladies etc.
			document.querySelector('#selectQuotas').style.backgroundColor = '#f3d5f3';
		}

		function openFareDeatil() { // click on i icon for information.
			// document.querySelector('.bx-info-circle').classList.toggle('active')
			document.getElementById("fareDetails").classList.toggle("active");
		}
	</script>

</body>
</html>