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
<title>Insert title here</title>
<link rel="stylesheet" href="css/spot_train.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-solid-straight/css/uicons-solid-straight.css'>

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

					<li class="active"><a href="spot_train.jsp"> <i
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
						class="log-img"> <label class="id-label"> <%=userMail%>
					</label><i class="fa-solid fa-chevron-right" id="right-arrow"
						onclick="logoutPopup()"></i>
				</div>
			</div>
		</div>
		<%
		String trainNumber = request.getParameter("Tnumber");
		int trainNumber2 = Integer.parseInt(trainNumber);
		int container = 0;

		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");

		SessionFactory sf = cnf.buildSessionFactory();

		Session s = sf.openSession();

		String fetch = "from AddPNRs where Train_Number=:userTrain";

		Query q = s.createQuery(fetch);
		q.setParameter("userTrain", trainNumber2);

		List<AddPNRs> list = q.list();

		for (AddPNRs ad : list) {

			/*	System.out.println("trainNumber2 : "+trainNumber2);
				System.out.println("THE DATA IS :");
				System.out.println(ad.getClasses());
				System.out.println("Trainn Number : "+ad.getTrain_Number());
				System.out.println("Trainn Name : "+ad.getTrain_Name()); */

			container = ad.getTrain_Number();
		%>
		<section class="main">
			<div id="spotLinks">
				<div class="sub-spotLinks-1">
					<a href="spot_train.jsp">SPOT TRAIN JOURNEY BASIS</a>
				</div>
				<div class="sub-spotLinks-2">
					<a href="spot_train2.jsp?trainValue=<%out.print(trainNumber2);%>">SPOT
						TRAIN INSTANCE BASIS</a>
				</div>
			</div>

			<form action="spot_train.jsp">
				<div class="container-x">
					<div class="entryArea-1">
						<i class="fa-solid fa-train-subway" id="train-logo"></i> <input
							type="search" required="required" maxlength="5"
							placeholder="Enter Train number" name="Tnumber"
							value="<%=ad.getTrain_Number()%>">
						<div class="labelLine-1">Train</div>
						<button class="btn-1">Go</button>
					</div>
				</div>
			</form>
			<section id="Train-status-1">
				<div class="status-1">
					<div class="traindefination">
						<h5>Train Defination</h5>
					</div>
					<div id="main-detail">
						<div class="train-deatil">
							<a href="" style="color: rgb(35, 133, 238);"><%=ad.getTrain_Number()%></a>
							<h6><%=ad.getTrain_Name()%></h6>
						</div>
						<div class="train-source">
							<h6>Source</h6>
							<h5><%=ad.getBoard_Station()%>(<%=ad.getShort_Board_Station()%>)
							</h5>
						</div>
						<div class="train-destination">
							<h6>Destination</h6>
							<h5><%=ad.getDestination_Station()%>(<%=ad.getShort_Destination_Station()%>)
							</h5>
						</div>
					</div>
					<div id="main-train-times">
						<div class="train-schedule-time">
							<h4>schedule-time</h4>
							<h5><%=ad.getJourney_Time()%>
								<%=ad.getJourney_Date()%></h5>
						</div>
						<div class="actucal-time">
							<h4>Actual/Expected Time</h4>
							<h5><%=ad.getJourney_Time()%>
								<%=ad.getJourney_Date()%></h5>
						</div>
						<div class="expected-delay">
							<h4>Actual/Expected Delay (HH:mm)</h4>
							<h5>00:01</h5>
						</div>
						<div class="platform-no">
							<h4>Platform No</h4>
							<h5>
								PF #<%=ad.getExpected_Board_Platform_number()%></h5>
						</div>
					</div>
					<div id="main-departure-status">
						<div class="lastupdate">
							<h5>
								<span style="color: red;">Last Update On </span>: 09-dec-2024
								11:56
							</h5>
						</div>
						<div class="startdate">
							<h5>
								Start Date :<span style="color: rgb(35, 133, 238);"> <%=ad.getJourney_Date()%></span>
							</h5>
						</div>
					</div>
				</div>
			</section>
			<section id="Train-status-2">
				<div class="status-2">
					<h5>Train Current Position/ Location/ Status</h5>
					<div id="main-train-current-position">
						<div class="lastlocation">
							<h5>Last Station/Location</h5>
							<h6><%=ad.getDestination_Station()%>
								(<%=ad.getShort_Destination_Station()%>)
							</h6>
						</div>
						<div class="lastlocation-event">
							<h5>Last Station/Location Event</h5>
							<h6><%=ad.getDestination_Station()%></h6>
						</div>
						<div class="lastlocation-time">
							<h5>Last Station/Location Scheduled Time</h5>
							<h6><%=ad.getJourney_Date()%>
								<%=ad.getJourney_Time()%></h6>
						</div>
					</div>
					<div id="main-train-current-position-2">
						<div class="lastlocation-actualtime">
							<h5>Last Station/Location Actual Time</h5>
							<h6><%=ad.getJourney_Date()%>
								11:47
							</h6>
						</div>
						<div class="lastlocationdelay">
							<h5>Last Station/Location Delay</h5>
							<h6>On Time</h6>
						</div>
						<div class="lastlocation-status">
							<h5>Train Status/Last Loaction</h5>
							<h6>
								Arrival at<span style="text-transform: uppercase;">
									sabarmati bg </span>(sbib) on 11:47 09-dec (On Time) (448 kms ahead of
								<span style="text-transform: uppercase;">jodhpur jn)</span>
							</h6>
						</div>
					</div>
				</div>
			</section>
			<section id="Train-status-3">
				<div class="status-3">
					<h5>Train Coach Position</h5>
					<div id="train-coach-position">
						<div class="coachSno">
							<h6>1</h6>
							<h6>2</h6>
							<h6>3</h6>
							<h6>4</h6>
							<h6>5</h6>
							<h6>6</h6>
							<h6>7</h6>
							<h6>8</h6>
						</div>
						<div class="coachPosition">
							<h6>C7</h6>
							<h6>C6</h6>
							<h6>C5</h6>
							<h6>C4</h6>
							<h6>C3</h6>
							<h6>E1</h6>
							<h6>C2</h6>
							<h6>C1</h6>
						</div>
						<div class="coachClasses">
							<h6>CC</h6>
							<h6>CC</h6>
							<h6>CC</h6>
							<h6>CC</h6>
							<h6>CC</h6>
							<h6>EC</h6>
							<h6>CC</h6>
							<h6>CC</h6>
						</div>
					</div>
				</div>
			</section>
		</section>
		<%
		}
		if (trainNumber2 == container) {
		System.out.println("Equalss :" + container);
		} else {
		System.out.println("False : " + container);
		response.sendRedirect("Blankspot_train.jsp?msg=invalidTrainNumber");
		}
		%>

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