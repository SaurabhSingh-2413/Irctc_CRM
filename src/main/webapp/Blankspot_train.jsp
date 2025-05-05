<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/Blankspot_train.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-solid-straight/css/uicons-solid-straight.css'>

<title>Insert title here</title>
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

					<li class="active"><a href="Blankspot_train.jsp"> <i
							class="fa-solid fa-location-crosshairs"></i> <label for="">Spot
								Train</label>
					</a></li>

					<li><a href="BlankRunningStatus.jsp"> <i class="fa-solid fa-train-subway"></i> <label
							for="">Train Running Status</label>
					</a></li>

					<li><a href="BlankComplaintfetch.jsp"> <i class="fa-solid fa-info"></i> <label
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
			<div id="spotLinks">
				<div class="sub-spotLinks-1">
					<a href="#">SPOT TRAIN JOURNEY BASIS</a>
				</div>
				<div class="sub-spotLinks-2">
					<a href="#">SPOT TRAIN INSTANCE BASIS</a>
				</div>
			</div>
			
			<%
			String msg = request.getParameter("msg");
									
			if("invalidTrainNumber".equals(msg)){						
				
				%>
<style>

.entryArea-1 {
	display: flex;
	margin-top: 20px;
}


.entryArea-1 input {

	outline: none;
	height: 40px;
	width: 130px;
	border-radius: 4px;
	padding: 0 30px;
	border: 2px solid red;
	background: transparent;
	transition: 0.1s ease;
	z-index: 1111;
	font-size: 15px;

}

.entryArea-1 input::placeholder {
	font-size: 13px;
	opacity: 0;
	transition: 0.1s;
}

.entryArea-1 input:focus::placeholder {
	opacity: 1;
}

.entryArea-1 input:hover {
	border: 2px solid red;
}

.labelLine-1 {
	position: relative;

	font-size: 1em;

	background-color: white;

	transition: 0.2s ease;
	color: red;
	font-size: 15px;
	right: 90px;

	display: flex;
	align-items: center;

}

.entryArea-1 input:focus {
	color: rgb(86, 86, 86);
	border: 2px solid red;
}

.entryArea-1 input:focus+.labelLine-1,
.entryArea-1 input:valid+.labelLine-1 {
	color: red;
	height: 20px;

	transform: translate(-30px, -10px) scale(0.88);
	z-index: 1111;
	position: relative;

}

#train-logo {
	position: relative;
	font-size: 15px;

	color: red;
	margin-top: 12px;
	left: 20px;
	z-index: 1;
}

</style>				
				
				
				<%
			}
			
			%>
			
			<form action="spot_train.jsp">
				<div class="container-x">
					<div class="entryArea-1">
						<i class="fa-solid fa-train-subway" id="train-logo"></i> <input
							type="search" required="required" maxlength="5"
							placeholder="Enter Train number" name="Tnumber">
						<div class="labelLine-1">Train</div>
						<button class="btn-1">Go</button>
					</div>
				</div>
			</form>
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