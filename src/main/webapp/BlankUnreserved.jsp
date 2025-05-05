<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/BlankUnreserved.css">
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
		
	<!-- =================== This is input,and select Field ===================  -->
	
	<section class="main">
			<div id="ReservationBlock">
				<div class="ReservedFair">
					<a href="BlankFareandSeat.jsp" class="nonCurrentPage">reserved</a>
				</div>

				<div class="UneservedFair">
					<a href="BlankUnreserved.jsp" class="currentPage">unreserved</a>
				</div>
			</div>
			<section>
				<div id="unreservedFareEnquiryTag">
					<h5>Unreserved Fare Enquiry</h5>
				</div>
				<form action="UnreservedFare.jsp">
					<div id="Inputscontainers1">
						<div class="entryArea-1" id="entryArea1">
							<i class="fa-solid fa-train-subway" id="train-logo"></i>
							<input type="search" required="required" placeholder="Enter Source Station"
								name="sourceStation">
							<div class="labelLine-1">Source Station</div>
						</div>
						<div class="entryArea-1" id="entryArea2">
							<i class="fa-solid fa-location-dot" id="train-logo"></i>
							<input type="search" required="required" placeholder="Enter Destination station"
								name="destinationStation">
							<div class="labelLine-1">Destination Station</div>
						</div>
						<select name="coachClasses" id="selectClass">
							<option value="select" disabled selected>-Class-</option>
							<option value="First Class (FC)">First Class (FC)</option>
							<option value="Second Class (II)">Second Class (II)</option>
						</select>

						<select name="trainTypes" id="selectTrainType">
							<option value="select" disabled selected>-Train Type-</option>
							<option value="Ordinary (O)">Ordinary (O)</option>
							<option value="Mail/Express (E)">Mail/Express (E)</option>
							<option value="Superfast (S)">Superfast (S)</option>
							<option value="MMTS (T)">MMTS (T)</option>
						</select>
					</div>
					<div id="Inputscontainers2">
						<select name="ticketTypes" id="selectJourneyType">
							<option value="select" disabled selected>-Ticket Type-</option>
							<option value="Monthly Season (M)">Monthly Season (M)</option>
							<option value="Quarterly Season (Q)">Quarterly Season (Q)</option>
							<option value="Half Yearly Season (H)">Half Yearly Season (H)</option>
							<option value="Yearly Season (Y)">Yearly Season (Y)</option>
						</select>

						<div class="entryArea-1">
							<i class="fa-solid fa-user" id="train-logo"></i>
							<input type="number" required="required" maxlength="5" placeholder="Enter Adults"
								name="adults">
							<div class="labelLine-1">Adult</div>
						</div>

						<div class="entryArea-1">
							<i class="fa-solid fa-child" id="train-logo"></i>
							<input type="number" required="required" maxlength="5" placeholder="Enter Childs"
								name="childs">
							<div class="labelLine-1">Child</div>
						</div>

						<div class="entryArea-1">
							<i class="fa-solid fa-train-subway" id="train-logo"></i>
							<input type="date" required="required" maxlength="5" name="jrnyDates">
							<button class="btn-1">get fare</button>
						</div>
					</div>
				</form>
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

	</script>

</body>
</html>