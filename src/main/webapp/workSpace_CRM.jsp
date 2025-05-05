<%@page import="com.mypack_Entities.Passenger_Details"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mypack_Entities.AddPNRs"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/workSpace_CRM.css">
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


<title>IRCTC-CRM</title>
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
						class="log-img"> <label class="id-label"> <%=userMail%>
					</label><i class="fa-solid fa-chevron-right" id="right-arrow"
						onclick="logoutPopup()"></i>
				</div>
			</div>
		</div>

		<%
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");

		SessionFactory sf = cnf.buildSessionFactory();

		Session s = sf.openSession();

		String Data = request.getParameter("findingData");

		System.out.println("The workSpace_CRM findingData is  : " + Data);

		String fetching = "from AddPNRs where PNR=:PNRs_Data";

		Query q = s.createQuery(fetching);
		q.setParameter("PNRs_Data", Data);

		List<AddPNRs> lists = q.list();
		String pnr = "";
		
		for (AddPNRs ap : lists) {
			pnr = ap.getPNR();
		%>

		<section class="main">
			<h5 class="label-pnr">PNR Enquiry</h5>
			<div class="container">
				<i class="fa-solid fa-ticket" id="pnr-icon"></i>
				<div class="entryArea-1">
					<input type="search" required="required" maxlength="10"
						placeholder="Enter PNR number" name="pnrAllData"
						value="<%=ap.getPNR()%>">
					<div class="labelLine-1">PNR</div>
				</div>
				<button class="btn-1">SUBMIT</button>
			</div>

			<section class="pnr-status-1">
                <div class="status-1">       <!--onclick="searchPopup()" id="searchPop-up" -->
                    <div class="pnr-number">
                        <h4>PNR Number : <%=ap.getPNR()%></h4>
                    </div>
                    <div class="train-detail">
                        <p class="p1">Train</p>
                        <p class="p1"><%=ap.getTrain_Number()%></p>
                        <p class="p1"><%=ap.getTrain_Name()%></p>
                    </div>
                    <div class="train-board-detail">
                        <p class="p2">From</p>
                        <p class="p2"><%=ap.getBoard_Station()%> | <b id="station-bold"><%=ap.getShort_Board_Station()%></b></p>
                        <p class="p2"><%=ap.getJourney_Date()%> <%=ap.getJourney_Time()%> <b style="color: red; font-weight: 10; font-size: 11px;">: (in 3
                                hours)</b></p>
                        <p class="p2">Expected PF# <%=ap.getExpected_Board_Platform_number()%></p>
                    </div>
                    <div class="total-time-journey">
                        <p>: <%=ap.getTotal_jouney_Time()%> (<%=ap.getTotal_jouney_KiloMeters()%>) :</p>
                    </div>
                    <div class="train-destination-detail">
                        <p class="p3">To
                        <p>
                        <p class="p3"><b id="station-bold-2"><%=ap.getShort_Destination_Station()%></b>| <%=ap.getDestination_Station()%></p>
                        <p class="p3"><%=ap.getDestination_Date()%> <%=ap.getDestination_Time()%></p>
                        <p class="p3">Expected PF# <%=ap.getExpected_Destination_Platform_number()%></p>
                    </div>
                </div>
            </section>
			
			
			
			<section class="pnr-status-2">
				<div class="status-2">
					<table>
						<div class="status-2-1">
							<h4><%=ap.getTicket_Type()%></h4>
							<h4><%=ap.getChart_Status()%></h4>
						</div>
						<div class="status-2-2">
							<p>
								Ticket Fare :
								<%=ap.getTicket_Fare()%>
								| Journey Date :
								<%=ap.getJourney_Date()%>
								| Class : <b id="classOfTrain"
									style="color: rgb(114, 113, 113);"><%=ap.getClasses()%> (<%=ap.getClass_in_Short()%>)</b>
							</p>
						</div>
						<div class="status-2-3">
							<p>
								Booking Amount :
								<%=ap.getTicket_Fare()%>
								| <b id="Quotas"><%=ap.getQuotas()%></b> | Booking on :
								<%=ap.getBooking_on()%>
							</p>
						</div>
						<%
						}if(Data.equals(pnr)){
							System.out.println("The PNR is correct lets continue.");
						}else{
							System.out.println("The PNR is incorrect lets go back.");
							response.sendRedirect("BlankworkSpace_CRM.jsp?msg=invalid");
						}
						%>

						<div class="status-2-4">
							<thead>
								<tr>
									<th>S.No.</th>
									<th>Age</th>
									<th>Current Status</th>
									<th>Additional Remarks</th>
								</tr>
							</thead>
							<tbody>

								<%
								String fetch2 = "from Passenger_Details";

								Query q2 = s.createQuery(fetch2);

								List<Passenger_Details> list2 = q2.list();

								String pnrs = "";

								for (Passenger_Details pd : list2) {
									int sNO = pd.getS_NO();
									int passengerAge = pd.getPassenger_Age();
									String currentStatus = pd.getCurrent_Status_OF_Tickets();
									String arr = pnrs + pd.getPNRs();

									if (Data.equals(arr)) {

										System.out.println("Equalssssz");
								%>

								<tr>

									<td><%=pd.getS_NO()%></td>
									<td><%=pd.getPassenger_Age()%></td>
									<td><%=pd.getCurrent_Status_OF_Tickets()%></td>

								</tr>
								<%
								}
								}
								%>
							</tbody>

						</div>
					</table>
				</div>

			</section>
			<section class="pnr-status-3">
				<div class="status-3">
					<h5 id="Expected-1">Expected - Departure Coach Position</h5>
					<div class="board-expected-departure">
						<p id="board-expected-station">At LDH | LUDHIANA</p>
					</div>
					<div class="train-label">
						<div class="train-coach-1">
							<h5 id="coach-name">ENG</h5>
							<p id="train-position-number">0</p>
							<p id="train-class-name">ENG</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">OCV</h5>
							<p id="train-position-number">1</p>
							<p id="train-class-name">OCV</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">GEN</h5>
							<p id="train-position-number">2</p>
							<p id="train-class-name">GEN</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">GEN</h5>
							<p id="train-position-number">3</p>
							<p id="train-class-name">GEN</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">S6</h5>
							<p id="train-position-number">4</p>
							<p id="train-class-name">SL</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">S5</h5>
							<p id="train-position-number">5</p>
							<p id="train-class-name">SL</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">S4</h5>
							<p id="train-position-number">6</p>
							<p id="train-class-name">SL</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">S3</h5>
							<p id="train-position-number">7</p>
							<p id="train-class-name">SL</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">S2</h5>
							<p id="train-position-number">8</p>
							<p id="train-class-name">SL</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">S1</h5>
							<p id="train-position-number">9</p>
							<p id="train-class-name">SL</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">PC</h5>
							<p id="train-position-number">10</p>
							<p id="train-class-name">PC</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">M1</h5>
							<p id="train-position-number">11</p>
							<p id="train-class-name">3E</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">B5</h5>
							<p id="train-position-number">12</p>
							<p id="train-class-name">3A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">B4</h5>
							<p id="train-position-number">13</p>
							<p id="train-class-name">3A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">B3</h5>
							<p id="train-position-number">14</p>
							<p id="train-class-name">3A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">B2</h5>
							<p id="train-position-number">15</p>
							<p id="train-class-name">3A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">B1</h5>
							<p id="train-position-number">16</p>
							<p id="train-class-name">3A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">A2</h5>
							<p id="train-position-number">17</p>
							<p id="train-class-name">2A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">A1</h5>
							<p id="train-position-number">18</p>
							<p id="train-class-name">2A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">HA1</h5>
							<p id="train-position-number">19</p>
							<p id="train-class-name">1A+2A</p>
						</div>
						<div class="train-coach-1">
							<h5 id="coach-name">SLRD</h5>
							<p id="train-position-number">20</p>
							<p id="train-class-name">SLRD</p>
						</div>
					</div>
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