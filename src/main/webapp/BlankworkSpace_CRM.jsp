<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" href="css/BlankworkSpace_CRM.css">
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


<title>Blank-CRM</title>
</head>
<body>

	<%
	/* Getting the emails from the Fetching_mails.*/

	String userMail = (String) session.getAttribute("UserEmail").toString();
	%>

	<div class="container">
		<div class="nav-item">
			<div class="nav-2">
				<img src="images/user-logo.jpg" alt="not-found" class="ubon-img">
				<label for="" class="ubon-title">IRCTC CRM</label>
				<ul>
					<li class="active"><a href="BlankworkSpace_CRM.jsp"> <i
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
						class="log-img"> <label class="id-label"><%=userMail%>
					</label><i class="fa-solid fa-chevron-right" id="right-arrow"
						onclick="logoutPopup()"></i>
				</div>
			</div>
		</div>

<%
String msg = request.getParameter("msg");
				
if("invalid".equals(msg)){
	%>
	
	<style>
	
		.label-pnr{
	color: gray;
	font-size: 15px;
	position: relative;
	left: 0px;
	font-weight: 160;
}

.entryArea-1 input{
	position: absolute;
    outline: none;
    height: 40px;
    width: 200px;
	border-radius: 4px;
    padding: 0 30px;
	border: 2px solid red;
    background: transparent;
	transition: 0.1s ease;
	z-index: 1111;
	font-size: 15px;
	top: 60px;
	left: 20px;
} 

.entryArea-1 input:hover{
	border: 2px solid red;
}

.labelLine-1{
	position: absolute;
    top: 70px;
	left: 40px;
	font-size: 1em;
	color: red;
	background-color: white;
    padding: 0 5px;
	margin: 0 20px;
	transition: 0.2s ease;
	color: gray;
	font-size: 18px;
}

.entryArea-1 input:focus,
.entryArea-1 input:valid{
	color: black;
	border: 2px solid red;
}
.entryArea-1 input:focus+.labelLine-1,
.entryArea-1 input:valid+.labelLine-1{
	color: red;
	height: 20px;
    left: 30px;
    top: 65px;
	line-height: 25px;
	padding: 2px;
	transform: translate(-15px,-16px) scale(0.88);
	z-index: 1111;
}

#pnr-icon{
	position: relative;
	font-size: 15px;
	top: 35px;
	color: red;
}

.entryArea-1 input::placeholder{
	font-size: 13px;
	opacity: 0;
	transition: 0.1s;
}
.entryArea-1 input:focus::placeholder{
	opacity: 1;
}
		
	</style>
	
	<%
}
																		
%>

		<section class="main">
			<h5 class="label-pnr">PNR Enquiry</h5>
			<form action="workSpace_CRM.jsp">
				<div class="container">
					<i class="fa-solid fa-ticket" id="pnr-icon"></i>
					<div class="entryArea-1">
						<input type="search" required="required" maxlength="10"
							placeholder="Enter PNR number" name="findingData">
						<div class="labelLine-1">PNR</div>
					</div>
					<button class="btn-1">SUBMIT</button>
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