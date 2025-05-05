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
<link rel="stylesheet" href="css/Station_Complaint.css">
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

<title>Station-Complaint</title>
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
								
	String id = request.getParameter("id");							
			
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
						<a href="Train_Complaint.jsp" class="nonCurrentPage" id="Complainttags">train complaint</a>
					</div>

					<div id="complaint-station">
						<a href="Station_Complaint.jsp" class="currentPage" id="Complainttags">station complaint</a>
					</div>

				</div>
			</section>

<!-- ==================== This is showing details area ============================= -->

			<section>
			<form action="CompalintAction" method="post">
					<div class="trainComplaintTag">
					<input type="radio" name="stationComplaint" id="stationComplaint" checked value="stationComplaint"><span>Station Complaint</span>
							<!-- <p>Station Complaint</p> -->
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
								<option value="Unreserved Ticketing">Unreserved Ticketing</option>
								<option value="Luggage/Parcels">Luggage / Parcels</option>
								<option value="Reserved Ticketing">Reserved Ticketing</option>
								<option value="Refunds of Tickets">Refunds of Tickets</option>
								<option value="Passenger Amenities">Passenger Amenities</option>
								<option value="Electrical Equipments">Electrical Equipments</option>
								<option value="Staff Behaviour">Staff Behaviour</option>
								<option value="Cleanliness">Cleanliness</option>
								<option value="Catering & Vending Services">Catering & Vending Services</option>
								<option value="Water Availability">Water Availability</option>
								<option value="Goods">Goods</option>
								<option value="Corruption / Bribery">Corruption / Bribery</option>
								<option value="Miscellaneous">Miscellaneous</option>
							</select>

							<i class="fa-solid fa-train-subway" id="train-logo"></i>
							<select name="SubcomplaintTypes" id="CompalintType" class="subcomplaint">
								<option value="No data"selected disabled>-No data-</option>
								<option value="Medical Assistance">Medical Assistance</option>
								<option value="" disabled>--------------------  Security ------------------</option>
								<option value="Eve-teasing Misbehaviour with lady passengers/Rape">Eve-teasing/Misbehaviour with lady passengers/Rape</option>
								<option value="Theft of passengers belongings/Snatching">Theft of passengers belongings/Snatching</option>
								<option value="Nuisance by hawkers/Beggar/Eunuch">Nuisance by hawkers/Beggar/Eunuch</option>
								<option value="Harassment/Extortion by security personnel/Railway personnel">Harassment/Extortion by security personnel/Railway personnel</option>
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
								<option value="Ramp at entry/Exit gates">Ramp at entry/Exit gates</option>
								<option value="Tactile pathway">Tactile pathway</option>
								<option value="Parking">Parking</option>
								<option value="Low height water booth">Low height water booth</option>
								<option value="Low seat toilet">Low seat toilet</option>
								<option value="Low height ticket counter">Low height ticket counter</option>
								<option value="Seating arrangement at station/Waiting area">Seating arrangement at station/Waiting area</option>
								<option value="Wheel chair/Battery operated car/Divyang sahayak (On payment feasible)">Wheel chair/Battery operated car/Divyang sahayak (On payment feasible)</option>
								<option value="Travel concession">Travel concession</option>
								<option value="Others">Others</option>
								<option value="" disabled>--------------------  Facilities for women with special needs ------------------</option>
								<option value="Segregated area for lactating mothers in waiting hall">Segregated area for lactating mothers in waiting hall</option>
								<option value="Baby food">Baby food</option>
								<option value="Others">Others</option>
								<option value="" disabled>--------------------  Unreserved Ticketing ------------------</option>
								<option value="UTS/ATVM - Digital payment">UTS/ATVM - Digital payment</option>
								<option value="Overcharging">Overcharging</option>
								<option value="ATVM">ATVM</option>
								<option value="Inadequate counters">Inadequate counters</option>
								<option value="MST">MST</option>
								<option value="UTS R-Wallet">UTS R-Wallet</option>
								<option value="UTS App login issue">UTS App login issue</option>
								<option value="UTS App mobile handset change">UTS App mobile handset change</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Luggage / Parcels  ------------------</option>
								<option value="Booking">Booking</option>
								<option value="Delivery">Delivery</option>
								<option value="overcharging">overcharging</option>
								<option value="Staff not available">Staff not available</option>
								<option value="Touts">Touts</option>
								<option value="Parcel facilitation">Parcel facilitation</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Reserved Ticketing  ------------------</option>
								<option value="E-Ticketing">E-Ticketing</option>
								<option value="Overcharging">Overcharging</option>
								<option value="Tatkal">Tatkal</option>
								<option value="Inadequate counters">Inadequate counters</option>
								<option value="Touts">Touts</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Refunds of Tickets  ------------------</option>
								<option value="Counter ticket">Counter ticket</option>
								<option value="Online ticket">Online ticket</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Passenger Amenities  ------------------</option>
								<option value="Parking">Parking</option>
								<option value="Enquiry office/Inadequate counter">Enquiry office/Inadequate counter</option>
								<option value="PA (Public Announcement) System">PA (Public Announcement) System</option>
								<option value="139">139</option>
								<option value="Wi-Fi">Wi-Fi</option>
								<option value="Benches/Sheds">Benches/Sheds</option>
								<option value="Foot over/under bridge">Foot over/under bridge</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Electrical Equipments  ------------------</option>
								<option value="Air conditioner">Air conditioner</option>
								<option value="Fans/Lights">Fans/Lights</option>
								<option value="Charging points">Charging points</option>
								<option value="Lifts/Escalators">Lifts/Escalators</option>
								<option value="Display/Coach indicator board">Display/Coach indicator board</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Staff Behaviour  ------------------</option>
								<option value="Staff Behaviour">Staff Behaviour</option>
								
								<option value=" " disabled>-------------------- Cleanliness  ------------------</option>
								<option value="Toilet">Toilet</option>
								<option value="Platform">Platform</option>
								<option value="Waiting room/Retiring room">Waiting room/Retiring room</option>
								<option value="Station entrance/Building">Station entrance/Building</option>
								<option value="Stalis">Stalis</option>
								<option value="Others">Others</option>
								
								<option value=" " disabled>-------------------- Catering & Vending services  ------------------</option>
								<option value="Overcharging">Overcharging</option>
								<option value="Service quality & Hygiene">Service quality & Hygiene</option>
								<option value="Food quality">Food quality</option>
								<option value="Food quantity">Food quantity</option>
								<option value="Food & Water not available">Food & Water not available</option>
								<option value="Others">Others</option>
								
								<option value=" " disabled>-------------------- Water Availability  ------------------</option>
								<option value="Drinking water at platform">Drinking water at platform</option>
								<option value="Packaged drinking water/Rail neer">Packaged drinking water/Rail neer</option>
								<option value="Water vending machines">Water vending machines</option>
								<option value="Retiring room/Waiting room">Retiring room/Waiting room</option>
								<option value="Toilet">Toilet</option>
								<option value="Others">Others</option>
								
								<option value=" " disabled>-------------------- Goods  ------------------</option>
								<option value="Booking">Booking</option>
								<option value="Delivery">Delivery</option>
								<option value="Overcharging">Overcharging</option>
								<option value="Staff not available">Staff not available</option>
								<option value="Touts">Touts</option>
								<option value="Demurrage/Wharfage">Demurrage/Wharfage</option>
								<option value="Freight facilitation">Freight facilitation</option>
								<option value="Others">Others</option>
								<option value=" " disabled>-------------------- Corruption / Bribery  ------------------</option>
								<option value="Corruption / Bribery">Corruption / Bribery</option>
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
										placeholder="Enter station name" name="stationName"
										id="inputarea">
									<div class="labelLine-1">Station</div>
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
						<div class="container-x">
								<div class="entryArea-1">
									<i class="fa-solid fa-train-subway" id="ticket-logo"></i> <input
										type="search" required="required"
										placeholder="Enter Train Number" name="Tnumber"
										id="inputarea" maxlength="5">
									<div class="labelLine-1">Train</div>
								</div>
							</div>
						<div id="inputField">
							<textarea name="complaintArea" id="TextAreaForComplaint" placeholder=" write here..."></textarea>
						</div>
						<button type="submit" class="btn-1">register complaint</button>
						<button type="reset" class="btn-2">reset</button>
					</div>
				</form>
				
			
								
				<div class="referenceNumber">
					<div id="status-2">
						<p>Your request has been registered and reference number is <%=id %></p>
					</div>
						<a href="Station_Complaint.jsp"><button id="btn-3">raise another complaint</button></a>
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