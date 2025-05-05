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
<link rel="stylesheet" href="css/RunningStatus.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-bold-rounded/css/uicons-bold-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/2.6.0/uicons-solid-straight/css/uicons-solid-straight.css'>

<title>Running-Status</title>
</head>
<body>

	<!-- Nav bar -->
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

					<li class="active"><a href="BlankRunningStatus.jsp"> <i
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
		
		int TNumber = Integer.parseInt(request.getParameter("RunningTrain2"));
		System.out.println("The Train Numberzzzx : "+TNumber);
									
		// create Configuration.
		
		Configuration cnf = new Configuration();
		cnf.configure("HiberConfigure.xml");
		
		SessionFactory sf = cnf.buildSessionFactory();
		
		Session s = sf.openSession();
				
		// Fetch data from the database.
		
		String fetch = "from AddPNRs where Train_Number=:TrainNumber";
		
		Query q = s.createQuery(fetch);
		
		q.setParameter("TrainNumber", TNumber);
		
		List<AddPNRs> list = q.list();
		
		for(AddPNRs ap : list){
				
				System.out.println("The Train Number is Equalx : "+TNumber);
			
			%>
		<!-- input feild and button -->

		<section class="main">
			<h5 id="train-running-status">Train Running Status</h5>
			<form action="RunningStatus" method="post">
				<div class="entryArea-1">
					<i class="fa-solid fa-train-subway" id="train-logo"></i> <input
						type="search" required="required" maxlength="5"
						placeholder="Enter Train number" name="RunningTrain" value="<%=ap.getTrain_Number()%>">
					<div class="labelLine-1">Train</div>
					<div class="start-date-1">
						<i class="fa-regular fa-calendar-days" id="calender-font"></i> <input
							type="date" id="start-input" value="<%=ap.getJourney_Date()%>">
						<button class="start-btn">GET DETAIL</button>
					</div>
				</div>
			</form>

		

			<section class="pnr-status-1">
				<div id="status-1">
					<div class="train-status-bar">
						<h4>Train Current Position - Location Status</h4>
					</div>
					<div id="trainRunning-bar">
						<div class="train-detail">
							<p style="padding: 3px;">Train Detail</p>
							<h5 style="padding: 3px;"><%=ap.getTrain_Number()%></h5>
							<h5 style="padding: 3px;"><%=ap.getTrain_Name()%></h5>
							<p style="padding: 3px;">Start Date : <%=ap.getJourney_Date()%></p>
						</div>
						<div class="source-station">
							<p id="tag-1">Source</p>
							<h5 id="tag-2"><%=ap.getShort_Board_Station()%></h5>
							<p id="tag-3"><%=ap.getBoard_Station()%></p>
						</div>
						<div class="destination-station">
							<p id="tag-4">Destination</p>
							<h5 id="tag-5"><%=ap.getShort_Destination_Station()%></h5>
							<p id="tag-6"><%=ap.getDestination_Station()%></p>
						</div>
					</div>
					<div class="last-location">
						<h6 style="font-weight: 100; padding: 2px;">Train Status/Last
							Location</h6>
						<h5 style="color: rgb(35, 133, 238);">Yet to start from its
							source</h5>
					</div>
					<div class="exception">
						<h6 style="color: gray;">
							Update On : <span style="color: red;">07-dec-2024 00:15 (a
								day ago)</span>
						</h6>
					</div>
				</div>
			</section>
			<section class="pnr-status-2">
				<div id="status-2">
					<div class="table-data">
						<table>
							<thead>
								<tr>
									<th>Current Status</th>
									<th>Sr No.</th>
									<th>Status</th>
									<th>Distance</th>
									<th>Arrival Time</th>
									<th>Departure Time</th>
									<th>Platform</th>
									<th>Train Reversal</th>
								</tr>
							</thead>
							<!-- ==================== first row ===================    -->
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td><p>1</p></td>
									<td>
										<h4 style="text-transform: uppercase;"><%=ap.getShort_Board_Station()%></h4>
										<p id="srce-status" class="srce-status"><%=ap.getBoard_Station()%></p>
									</td>
									<td><p>-</p></td>
									<td>
										<p id="blankInArrivalTime">*</p>
									</td>
									<td>
										<p id="deptTime">
											E: <%=ap.getJourney_Date()%> <%=ap.getJourney_Time()%> <span style="color: red;">*</span>
										</p>
										<p id="deptAwait">Update Awaited**</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											19:30</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong><%=ap.getExpected_Board_Platform_number() %></strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach1(this)" id="downicon"></i> <!-- <i class="fa-solid fa-angle-up"></i> -->
									</td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== Coaches 1 ===================    -->

						<div class="coachIndicator" id="coachIndicators1">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>
						<!-- ==================== second row ===================    -->
						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>2</td>
									<td>
										<h4 style="text-transform: uppercase;">bkp</h4>
										<p id="srce-status">bakhtiyarpur jn</p>
									</td>
									<td><p id="distancekilometer">45 km</p></td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 21:03 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait">Update Awaited**</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											20:30</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 21:04 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait">Update Awaited**</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											20:32</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>1</strong>
										</p>
									</td>
									<td>
										<p id="ReversedTag">
											Reversed<i class="fa-solid fa-angle-down"
												onclick="showCoach2(this)"></i>
										</p>
									</td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== coach 2 ===================    -->

						<div class="coachIndicator" id="coachIndicators2">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
							<br>
							<hr>
							<br>

							<!-- ==================== Reverse coach ===================    -->

							<div class="board-expected-departure">
								<p id="board-expected-station">Departure Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">SLRD</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1" id="reversedCoach">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">GEN</p>
								</div>
							</div>
						</div>

						<!-- ==================== third row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>3</td>
									<td>
										<h4 style="text-transform: uppercase;">HRI</h4>
										<p id="srce-status">HARDOI</p>
									</td>
									<td>102 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 23:34 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-2">16 min</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											23:18</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 23:46 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-2">12 min</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											23:19</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>5</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach3(this)"></i></td>
								</tr>
							</tbody>
						</table>
						<!-- ==================== Coaches 3 ===================    -->

						<div class="coachIndicator" id="coachIndicators3">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== fourth row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>4</td>
									<td>
										<h4 style="text-transform: uppercase;">SPN</h4>
										<p id="srce-status">SHAHJEHANPUR</p>
									</td>
									<td>164 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 00:38 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											00:38</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 00:40 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											00:40</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>3</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach4(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== coach 4 ===================    -->

						<div class="coachIndicator" id="coachIndicators4">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== fifth row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>5</td>
									<td>
										<h4 style="text-transform: uppercase;">BE</h4>
										<p id="srce-status">BAREILLY(NR)</p>
									</td>
									<td>235 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 01:41 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											01:41</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 01:43 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											01:43</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>6</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach5(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== coach 5 ===================    -->

						<div class="coachIndicator" id="coachIndicators5">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== sixth row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>6</td>
									<td>
										<h4 style="text-transform: uppercase;">RMU</h4>
										<p id="srce-status">RAMPUR</p>
									</td>
									<td>298 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 02:36 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											02:36</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 02:38 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											02:38</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>9</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach6(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== Coaches 6 ===================    -->

						<div class="coachIndicator" id="coachIndicators6">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== seventh row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>7</td>
									<td>
										<h4 style="text-transform: uppercase;">MB</h4>
										<p id="srce-status">MORADABAD</p>
									</td>
									<td>325 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 03:25 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											03:25</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 03:27 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											03:27</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>4</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach7(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== Coaches 7 ===================    -->

						<div class="coachIndicator" id="coachIndicators7">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== eighth row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>8</td>
									<td>
										<h4 style="text-transform: uppercase;">HPU</h4>
										<p id="srce-status">HAPUR</p>
									</td>
									<td>430 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 04:56 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											04:56</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 04:58 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											04:58</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>1</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach8(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== Coaches 8 ===================    -->

						<div class="coachIndicator" id="coachIndicators8">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== nineth row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>9</td>
									<td>
										<h4 style="text-transform: uppercase;">gzb</h4>
										<p id="srce-status">GHAZIABAD</p>
									</td>
									<td>467 km</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 05:53 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											05:53</p>
									</td>
									<td>
										<p id="deptTime">
											E: 23-Nov-2024 05:55 <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: 23-Nov-2024
											05:55</p>
									</td>
									<td>
										<p id="pfNumber">
											pf#<strong>2</strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach9(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== Coaches 9 ===================    -->

						<div class="coachIndicator" id="coachIndicators9">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

						<!-- ==================== tenth row ===================    -->

						<table>
							<tbody>
								<tr>
									<td>
										<p>
											<i class="fa-regular fa-circle"></i>
										</p>
									</td>
									<td>10</td>
									<td>
										<h4 style="text-transform: uppercase;"><%=ap.getShort_Destination_Station()%></h4>
										<p id="srce-status"><%=ap.getDestination_Station()%></p>
									</td>
									<td>492 km</td>
									<td>
										<p id="deptTime">
											E: <%=ap.getDestination_Date() %> <%=ap.getDestination_Time() %> <span style="color: red;">*</span>
										</p>
										<p id="deptAwait-3">On Time</p>
										<p id="deptTime-1" style="font-size: 10px;">S: <%=ap.getDestination_Date() %>
											<%=ap.getDestination_Time() %></p>
									</td>
									<td></td>
									<td></td>
									<td></td>
									<td>*</td>
									<td>
										<p id="pfNumber">
											pf#<strong><%=ap.getExpected_Destination_Platform_number() %></strong>
										</p>
									</td>
									<td><i class="fa-solid fa-angle-down"
										onclick="showCoach10(this)"></i></td>
								</tr>
							</tbody>
						</table>

						<!-- ==================== Coaches 10 ===================    -->

						<div class="coachIndicator" id="coachIndicators10">
							<div class="board-expected-departure">
								<p id="board-expected-station">Arrival Coach Position</p>
							</div>
							<div class="train-label">
								<div class="train-coach-1">
									<h5 id="coach-name">ENG</h5>
									<p id="train-position-number">0</p>
									<p id="train-class-name">ENG</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">1</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">GEN</h5>
									<p id="train-position-number">2</p>
									<p id="train-class-name">GEN</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S3</h5>
									<p id="train-position-number">3</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S2</h5>
									<p id="train-position-number">4</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">S1</h5>
									<p id="train-position-number">5</p>
									<p id="train-class-name">SL</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">PC</h5>
									<p id="train-position-number">6</p>
									<p id="train-class-name">PC</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">M1</h5>
									<p id="train-position-number">7</p>
									<p id="train-class-name">3E</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B3</h5>
									<p id="train-position-number">8</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B2</h5>
									<p id="train-position-number">9</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">B1</h5>
									<p id="train-position-number">10</p>
									<p id="train-class-name">3A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A2</h5>
									<p id="train-position-number">11</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">A1</h5>
									<p id="train-position-number">12</p>
									<p id="train-class-name">2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">HA1</h5>
									<p id="train-position-number">13</p>
									<p id="train-class-name">1A+2A</p>
								</div>
								<div class="train-coach-1">
									<h5 id="coach-name">SLRD</h5>
									<p id="train-position-number">14</p>
									<p id="train-class-name">SLRD</p>
								</div>
							</div>
						</div>

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

        // showCoach() coachIndicators show on click.


        let showCoach1 = function showCoach1(icon) {
            document.getElementById("coachIndicators1").classList.toggle("active");
            icon.classList.toggle("fa-angle-up") // onclick change icon downicon to upicon.
        }


        let showCoach2 = function showCoach2(icon) {
            document.getElementById("coachIndicators2").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach3 = function showCoach3(icon) {
            document.getElementById("coachIndicators3").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach4 = function showCoach4(icon) {
            document.getElementById("coachIndicators4").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach5 = function showCoach5(icon) {
            document.getElementById("coachIndicators5").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach6 = function showCoach6(icon) {
            document.getElementById("coachIndicators6").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach7 = function showCoach7(icon) {
            document.getElementById("coachIndicators7").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach8 = function showCoach8(icon) {
            document.getElementById("coachIndicators8").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach9 = function showCoach9(icon) {
            document.getElementById("coachIndicators9").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach10 = function showCoach10(icon) {
            document.getElementById("coachIndicators10").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }

        let showCoach11 = function showCoach11(icon) {
            document.getElementById("coachIndicators11").classList.toggle("active");
            icon.classList.toggle("fa-angle-up")
        }
    </script>
</body>
</html>