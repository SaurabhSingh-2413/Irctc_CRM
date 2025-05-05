<%@page import="java.util.List"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.mypack_Entities.ComplaintsFeilds"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/Train_Complaint.css">
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

<title>Train-Complaint</title>
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

<%
	//String message = request.getParameter("msg");								
	String id = request.getParameter("id");							
	
	// if("done".equals(message))
		
				Configuration cnff = new Configuration();
				cnff.configure("HiberConfigure.xml");
				SessionFactory sf = cnff.buildSessionFactory();
				Session s = sf.openSession();
				
				String fetch = "from ComplaintsFeilds";
				
				Query q = s.createQuery(fetch);
				
				List<ComplaintsFeilds> list = q.list();
				
				for(ComplaintsFeilds cf:list){
					System.out.println("The id is : "+cf.getId());
				
		
	if(cf.getId().equals(id)){
		
		%>
		
<style>

#status-1 {
	margin-top: 30px;
	border-radius: 5px;
	border-top: 1px solid rgb(248, 245, 245);
	border-left: 2px solid rgb(230, 228, 228);
	border-right: 2px solid rgb(230, 228, 228);
	border-bottom: 2.3px solid rgb(172, 171, 171);
	padding: 10px;
	display: none;
}


#status-2 {
	margin-top: 30px;
	border-radius: 5px;
	border-top: 1px solid rgb(248, 245, 245);
	border-left: 5px solid rgb(171, 42, 42);
	border-right: 2px solid rgb(230, 228, 228);
	border-bottom: 2.3px solid rgb(172, 171, 171);
	padding: 10px;
	
}

.referenceNumber{
	display: contents;
}

</style>
	
		<%
	}
		
	}

%>

		<section class="main">
			<section>
				<div class="complaint-area">
					<div id="complaint-status">
						<a href="BlankComplaintfetch.jsp" class="nonCurrentPage" id="Complainttags">complaint status</a>
					</div>

					<div id="complaint-train">
						<a href="Train_Complaint.jsp" class="currentPage" id="Complainttags">train complaint</a>
					</div>

					<div id="complaint-station">
						<a href="Station_Complaint.jsp" class="nonCurrentPage" id="Complainttags">station complaint</a>
					</div>

				</div>
			</section>

			<!-- ==================== This is showing details area ============================= -->

			<section>
			<form action="CompalintAction" method="post">
					<div class="trainComplaintTag">
					<input type="radio" name="trainComplaint" id="trainComplaint" checked value="trainComplaint"><span>Train Complaint</span>
							<!-- <p></p> -->
					</div>
				
					<div id="status-1">
						<div id="selectFields">
							<i class="fa-solid fa-train-subway" id="train-logo"></i>
							<select name="complaintTypes" id="CompalintType" class="comType">
								<option value="No data"selected disabled>-No data-</option>
								<option value="Medical Assistance">Medical Assistance</option>
								<option value="Security">Security</option>
								<option value="Divyangjan Facilities">Divyangjan Facilities</option>
								<option value="Facilities for Women with Special needs">Facilities for Women with
									Special needs</option>
								<option value="Electrical Equipment">Electrical Equipment</option>
								<option value="Coach - Cleanliness">Coach - Cleanliness</option>
								<option value="Punctuality">Punctuality</option>
								<option value="Water Availablity">Water Availablity</option>
								<option value="Coach - Maintenance">Coach - Maintenance</option>
								<option value="Catering & Vending Services">Catering & Vending Services</option>
								<option value="Staff Behaviour">Staff Behaviour</option>
								<option value="Corruption / Bribery">Corruption / Bribery</option>
								<option value="Bed Roll">Bed Roll</option>
								<option value="Miscellaneous">Miscellaneous</option>
							</select>

							<i class="fa-solid fa-train-subway" id="train-logo"></i>
							<select name="SubcomplaintTypes" id="CompalintType" class="subcomplaint">
								<option value="No data"selected disabled>-No data-</option>
								<option value="Medical Assistance">Medical Assistance</option>
								<option value="" disabled>--------------------  Security ------------------</option>
								<option value="Eve-teasing Misbehaviour with lady passengers/Rape">Eve-teasing Misbehaviour with lady passengers/Rape</option>
								<option value="Theft of passengers belongings/Snatching">Theft of passengers belongings/Snatching</option>
								<option value="Unauthorized person in ladies/Disabled coach/SLR/Reserve Coach">Unauthorized person in ladies/Disabled coach/SLR/Reserve Coach</option>
								<option value="Harassment/Extortion by security personnel /railway personnel">Harassment/Extortion by security personnel /railway personnel</option>
								<option value="Nuisance by hawkers/Beggar/Eunuch">Nuisance by hawkers/Beggar/Eunuch</option>
								<option value="Luggage left behind/Unclaimed/Suspected articles">Luggage left behind/Unclaimed/Suspected articles</option>
								<option value="Passenger missing/Not responding call">Passenger missing/Not responding call</option>
								<option value="Smoking/Drinking alcohol/Narcotics">Smoking/Drinking alcohol/Narcotics</option>
								<option value="Dacoity/Robbery/Murder/Riots">Dacoity/Robbery/Murder/Riots</option>
								<option value="Quarrelling/Hooliganism">Quarrelling/Hooliganism</option>
								<option value="Passenger fallen down">Passenger fallen down</option>
								<option value="Nuisance by passenger">Nuisance by passenger</option>
								<option value="Misbehaviour">Misbehaviour</option>
								<option value="Other">Other</option>
								<option value="" disabled>--------------------  Divyangjan Facilities ------------------</option>
								<option value="Divyangjan coach unavailability">Divyangjan coach unavailability</option>
								<option value="Divyangjan toilet/washbasin">Divyangjan toilet/washbasin</option>
								<option value="Braille signage in coach">Braille signage in coach</option>
								<option value="Others">Others</option>
								<option value="" disabled>--------------------  Facilities for women with special needs ------------------</option>
								<option value="Baby food">Baby food</option>
								<option value="" disabled>--------------------  Electric equipment ------------------</option>
								<option value="Air conditioner">Air conditioner</option>
								<option value="Fans">Fans</option>
								<option value="Lights">Lights</option>
								<option value="Charging points">Charging points</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Coach - Cleanliness  ------------------</option>
								<option value="Toilet">Toilet</option>
								<option value="Washbasin">Washbasin</option>
								<option value="Cockroach/Rodents">Cockroach/Rodents</option>
								<option value="Coach interior">Coach interior</option>
								<option value="Coach Exterior">Coach Exterior</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Punctuality  ------------------</option>
								<option value="NTES app">NTES app</option>
								<option value="Late Running">Late Running</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Water Availablity  ------------------</option>
								<option value="Packaged drinking water/Rail neer">Packaged drinking water/Rail neer</option>
								<option value="Toilet">Toilet</option>
								<option value="Washbasin">Washbasin</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Coach Maintenance  ------------------</option>
								<option value="Window/Seat broken">Window/Seat broken</option>
								<option value="Window/Door locking problem">Window/Door locking problem</option>
								<option value="Tap leaking/Tap not working">Tap leaking/Tap not working</option>
								<option value="Broken/Missing toilet fittings">Broken/Missing toilet fittings</option>
								<option value="Jerks/Abnormal sound">Jerks/Abnormal sound</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Catering & Vending services  ------------------</option>
								<option value="Overcharging">Overcharging</option>
								<option value="Service quality & Hygiene">Service quality & Hygiene</option>
								<option value="Food quality & Quantity">Food quality & Quantity</option>
								<option value="E-catering">E-catering</option>
								<option value="Food & water not available">Food & water not available</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Staff Behaviour  ------------------</option>
								<option value="Staff Behaviour">Staff Behaviour</option>
								<option value=" " disabled>-------------------- Corruption / Bribery  ------------------</option>
								<option value="Corruption / Bribery">Corruption / Bribery</option>
								<option value=" " disabled>-------------------- Bed Roll  ------------------</option>
								<option value="Dirty/Torn">Dirty/Torn</option>
								<option value="Overcharging">Overcharging</option>
								<option value="Non Availablity">Non Availablity</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Miscellaneous  ------------------</option>
								<option value="Miscellaneous">Miscellaneous</option>
							</select>
						</div>
						<div id="travelType">
							<i class="fa-solid fa-infinity" id="train-logo"></i>
							<select name="ticketTypes" id="CompalintType">
								<option value="PNR">PNR</option>
								<option value="UTS">UTS</option>
							</select>

							<div class="container-x">
								<div class="entryArea-1">
									<i class="fa-solid fa-gauge" id="ticket-logo"></i> <input
										type="search" required="required"
										placeholder="Enter PNR / UTS Number" name="ticketNumbers"
										id="inputarea" maxlength="10">
									<div class="labelLine-1">PNR/UTS</div>
								</div>
							</div>

							<div class="container-x">
								<div class="entryArea-1">
									<i class="fa-solid fa-train-subway" id="ticket-logo"></i> <input
										type="search" required="required"
										placeholder="Enter Train Number" name="Tnumber"
										id="inputarea" maxlength="5">
									<div class="labelLine-1">Train</div>
								</div>
							</div>
						</div>

						<div id="ContactIncidentdate">
							<div class="container-x">
								<div class="entryArea-1">
									<i class="fa-solid fa-phone" id="ticket-logo"></i>
									<input
										type="search" required="required"
										placeholder="Enter Train Number" name="custMobilenumber"
										id="inputarea" maxlength="10">
									<div class="labelLine-1">Mobile</div>
								</div>
							</div>

							<div class="container-x">
								<div class="entryArea-1">
									<i class="fa-regular fa-clock" id="ticket-logo"></i> <input
										type="datetime-local" required="required" name="Dates"
										id="inputarea">
									<!-- <div class="labelLine-1">Incident Train</div> -->
								</div>
							</div>
						</div>
						<div id="inputField">
							<textarea name="complaintArea" id="TextAreaForComplaint" placeholder=" write here..."></textarea>
						</div>
						<button type="submit" class="btn-1">register complaint</button>
						<button type="reset" class="btn-2">reset</button>
					</div>
				</form>
				
				<%
				/* Configuration cnff = new Configuration();
				cnff.configure("HiberConfigure.xml");
				SessionFactory sf = cnff.buildSessionFactory();
				Session s = sf.openSession();
				
				String fetch = "from ComplaintsFeilds";
				
				Query q = s.createQuery(fetch);
				
				List<ComplaintsFeilds> list = q.list();
				
				for(ComplaintsFeilds cf:list){
					System.out.println("The id is : "+cf.getId());
				} */
				
										
				%>
								
				<div class="referenceNumber">
					<div id="status-2">
						<p>Your request has been registered and reference number is <%=id %></p>
					</div>
						<a href="Train_Complaint.jsp"><button id="btn-3">raise another complaint</button></a>
				</div>
				
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

		function logoutPopup() {
			document.getElementById("log-pop").classList.toggle("active");
		}
	</script>

</body>
</html>