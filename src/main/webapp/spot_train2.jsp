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
<link rel="stylesheet" href="css/spot_train2.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-solid-straight/css/uicons-solid-straight.css'>
<title>SPOT TRAIN INSTANCE BASIS</title>
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
							class="fa-solid fa-ticket"></i> <label
							for="BlankworkSpace_CRM.jsp">PNR Enquiry</label>
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

				<!-- When user is click on this then show new pop-up and name its Logout.  -->
				<div class="Log-out" onclick="logoutPopup()">
					<img src="images/icons8-user-100.png" alt="not-found"
						class="log-img"> <label class="id-label"> <%=userMail%>
					</label><i class="fa-solid fa-chevron-right" id="right-arrow"></i>
					<!-- onclick="logoutPopup()" -->
				</div>
			</div>
		</div>
		<%
		String Tnumber = request.getParameter("trainValue");
		System.out.println("Trainnnnn NumbeX : " + Tnumber);

		int train = Integer.parseInt(Tnumber);

		int comTrain;

		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");

		SessionFactory sf = cnf.buildSessionFactory();

		Session s = sf.openSession();

		String fetch = "from AddPNRs where Train_Number=:TrainNumber";

		Query q = s.createQuery(fetch);
		q.setParameter("TrainNumber", train);

		List<AddPNRs> list = q.list();

		for (AddPNRs ap : list) {
			comTrain = ap.getTrain_Number();
			System.out.println(ap.getChart_Status());

			if (comTrain == train) {
		%>
		<section class="main">
			<div id="spotLinks">
				<div class="sub-spotLinks-1">
					<a href="Blankspot_train.jsp">SPOT TRAIN JOURNEY BASIS</a>
				</div>
				<div class="sub-spotLinks-2">
					<a href="spot_train2.jsp">SPOT TRAIN INSTANCE BASIS</a>
				</div>
			</div>
			<div class="container-x">
				<div class="entryArea-1">
					<i class="fa-solid fa-train-subway" id="train-logo"></i> <input
						type="search" required="required" maxlength="5"
						placeholder="Enter Train number"
						value="<%=ap.getTrain_Number()%>">
					<div class="labelLine-1">Train</div>
					<button class="btn-1">Go</button>
				</div>
			</div>

			<section id="Train-status-1">
				<div class="status-1">
					<div id="TrainRunningInstance">
						<div class="runningInstance">
							<h5>Train Running Instance</h5>
						</div>
						<div class="LastInstance">
							<h5>
								Last Update On : <span style="color: rgb(112, 110, 110);">10-DEC-2024
									00:48:22</span>
							</h5>
						</div>
					</div>
					<div class="TrainOverView">
						<table>
							<thead>
								<tr>
									<th>Start Date</th>
									<th>Source</th>
									<th>Destination</th>
									<th>Train Status</th>
									<th>Train Exceptions (if any)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><%=ap.getJourney_Date()%></td>
									<td style="text-transform: uppercase;"><%=ap.getBoard_Station()%></td>
									<td style="text-transform: uppercase;"><%=ap.getDestination_Station()%></td>
									<td style="color: #4caf50">Yet to start from its source</td>
								</tr>
								<!-- <tr>
                                    <td>11-Dec-2024</td>
                                    <td style="text-transform: uppercase;">jodhpur jn</td>
                                    <td style="text-transform: uppercase;">sabarmati bg</td>
                                    <td>Arrived at sabarmati bg(sbib) on 11:47 09-DEC (On Time)</td>
                                </tr> -->
							</tbody>
						</table>
						<%
						}
						}
						%>
					</div>
				</div>
			</section>
		</section>

	</div>
	<form action="LogoutAction" method="post"></form>
	<!-- This 'onclick="logoutPopup()"' is used for work logout button. -->
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

		// function searchPopup(){
		//     document.getElementById("searchPop-up").classList.toggle("active");
		// }
	</script>
</body>
</html>