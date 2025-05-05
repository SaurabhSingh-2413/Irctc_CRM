<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/set_PNR_information.css">
<meta charset="ISO-8859-1">
<title>Insert PNR-Information here</title>
</head>
<body>
	<%
	String submit = request.getParameter("msg");
	%>
	<div class="Acknowledgement">
		<h1><%=submit%></h1>
	</div>
	<div class="main-container-1">
		<h1>* Train-Details :</h1>
		<form action="PNR_action" method="post">
			<div class="sub-conatiners">
				<label for="">1. PNR</label> <input type="number"
					placeholder="Enter PNR" required="required" name="pnr">
			</div>

			<div class="sub-conatiners">
				<label for="">2. Train number</label> <select name="trainNumber"
					id="">
					<option value="Select">-Select-</option>
					<option value="19702">19702</option>
					<option value="09426">09426</option>
					<option value="12349">12349</option>
					<option value="22890">22890</option>
					<option value="15159">15159</option>
					<option value="07419">07419</option>
					<option value="12487">12487</option>
					<option value="01618">01618</option>
					<option value="22911">22911</option>
					<option value="12559">12559</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">3. Train name</label> <select name="trainName" id="">
					<option value="Select">-Select-</option>
					<option value="Sainik Express">Sainik Express</option>
					<option value="Sabarmati Summer Special">Sabarmati Summer
						Special</option>
					<option value="Sampoorna Kranti Express">Sampoorna Kranti
						Express</option>
					<option value="Samudra Kanya Express">Samudra Kanya
						Express</option>
					<option value="Sarnath Express">Sarnath Express</option>
					<option value="Secunderabad Danapur Special">Secunderabad
						Danapur Special</option>
					<option value="Seemanchal Express">Seemanchal Express</option>
					<option value="Shamli Delhi Express Special">Shamli Delhi
						Express Special</option>
					<option value="Shipra Express">Shipra Express</option>
					<option value="Shiv Ganga Express">Shiv Ganga Express</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">4. Boarding station</label> <select
					name="boardStation" id="">
					<option value="Select">-Select-</option>
					<option value="DELHI CANTT">DELHI CANTT</option>
					<option value="HARIDWAR">HARIDWAR</option>
					<option value="GODDA">GODDA</option>
					<option value="PURI">PURI</option>
					<option value="CHHAPRA">CHHAPRA</option>
					<option value="SECUNDERABAD JN">SECUNDERABAD JN</option>
					<option value="JOGBANI">JOGBANI</option>
					<option value="SHAMLI">SHAMLI</option>
					<option value="INDORE JN">INDORE JN</option>
					<option value="BANARAS">BANARAS</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">5. Boarding in short form</label> <select
					name="boardInShort" id="">
					<option value="Select">-Select-</option>
					<option value="DEC">DEC</option>
					<option value="HW">HW</option>
					<option value="GODA">GODA</option>
					<option value="PURI">PURI</option>
					<option value="CPR">CPR</option>
					<option value="SC">SC</option>
					<option value="JBN">JBN</option>
					<option value="SMQL">SMQL</option>
					<option value="INDB">INDB</option>
					<option value="BSBS">BSBS</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">6. Departure date Boarding</label> <input type="date"
					placeholder="Enter Departure date Boarding" required="required"
					name="departureDate">
			</div>

			<div class="sub-conatiners">
				<label for="">7. Departure time Boarding</label> <input type="time"
					placeholder="Enter Departure time Boarding" required="required"
					name="departureTime">
			</div>

			<div class="sub-conatiners">
				<label for="">8. Boarding platform number</label> <input
					type="number" placeholder="Enter Boarding platform number"
					required="required" name="boardPf">
			</div>

			<div class="sub-conatiners">
				<label for="">9. Time taken</label> <input type="text"
					placeholder="Enter Time taken" required="required" name="timeTaken">
			</div>

			<div class="sub-conatiners">
				<label for="">10. Total KiloMeters</label> <input type="text"
					placeholder="Enter Total KiloMeters" required="required"
					name="totalKM">
			</div>

			<div class="sub-conatiners">
				<label for="">11. Destination station</label> <select
					name="destinationStation" id="">
					<option value="Select">-Select-</option>
					<option value="JAIPUR JN.">JAIPUR JN.</option>
					<option value="SABARMATI BG">SABARMATI BG</option>
					<option value="NEW DELHI">NEW DELHI</option>
					<option value="DIGHA">DIGHA</option>
					<option value="DURG">DURG</option>
					<option value="DANAPUR">DANAPUR</option>
					<option value="ANAND VIHAR TERMINAL">ANAND VIHAR TERMINAL</option>
					<option value="DELHI JN.">DELHI JN.</option>
					<option value="HOWRAH JN">HOWRAH JN</option>
					<option value="NEW DELHI">NEW DELHI</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">12. Destination in short form</label> <select
					name="destinationInShort" id="">
					<option value="Select">-Select-</option>
					<option value="JP">JP</option>
					<option value="SBIB">SBIB</option>
					<option value="NDLS">NDLS</option>
					<option value="DGHA">DGHA</option>
					<option value="DURG">DURG</option>
					<option value="DNR">DNR</option>
					<option value="ANVT">ANVT</option>
					<option value="DLI">DLI</option>
					<option value="HWH">HWH</option>
					<option value="NDLS">NDLS</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">13. Arrival date destination</label> <input
					type="date" placeholder="Enter Arrival date destination"
					required="required" name="arrivalDate">
			</div>

			<div class="sub-conatiners">
				<label for="">14. Arrival time destination</label> <input
					type="time" placeholder="Enter Arrival time destination"
					required="required" name="arrivalTime">
			</div>


			<div class="sub-conatiners">
				<label for="">15. Destination platform number</label> <input
					type="text" placeholder="Enter Destination platform number"
					required="required" name="destinationPf">
			</div>

			<h1>* The Part Of Ticket-Status :</h1>

			<div class="sub-conatiners">
				<label for="">16. Ticket type</label> <select name="ticketType"
					id="">
					<option value="Select">-Select-</option>
					<option value="eTicket">eTicket</option>
					<option value="iTicket">iTicket</option>
					<option value="Counter Ticket">Counter Ticket</option>
					<option value="Prebought Ticket">Prebought Ticket</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">17. Ticket fare</label> <input type="number"
					placeholder="Enter Ticket fare" required="required"
					name="ticketfare">
			</div>

			<div class="sub-conatiners">
				<label for="">18. Class type</label> <select name="classType" id="">
					<option value="Select">-Select-</option>
					<option value="1AC">1AC</option>
					<option value="2AC">2AC</option>
					<option value="3AC">3AC</option>
					<option value="3AC ECONOMY">3AC ECONOMY</option>
					<option value="SLEEPER">SLEEPER</option>
					<option value="2 SEATER">2 SEATER</option>
					<option value="AC CHAIR CAR">AC CHAIR CAR</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">19. Class type in short</label> <select
					name="classInShort" id="">
					<option value="Select">-Select-</option>
					<option value="1AC">1AC</option>
					<option value="2AC">2AC</option>
					<option value="3AC">3AC</option>
					<option value="3E">3E</option>
					<option value="SL">SL</option>
					<option value="2S">2S</option>
					<option value="CC">CC</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">20. Quota type</label> <select name="quotaType" id="">
					<option value="Select">-Select-</option>
					<option value="General Quota">General Quota</option>
					<option value="Tatkal Quota">Tatkal Quota</option>
					<option value="Ladies Quota">Ladies Quota</option>
					<option value="Premium Tatkal Quota">Premium Tatkal Quota</option>
					<option value="Senoir Citizen Quota">Senior Citizen Quota</option>
					<option value="Handicapped Quota">Handicapped Quota</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">21. Booking On</label> <input type="date"
					placeholder="Enter Booking On" required="required" name="bookingOn">
			</div>

			<div class="sub-conatiners">
				<label for="">22. Chart status</label> <select name="chartStatus"
					id="">
					<option value="Select">-Select-</option>
					<option value="Chart Prepared">Chart Prepared</option>
					<option value="Chart Not Prepared">Chart Not Prepared</option>
					<option value="Chart in Progress">Chart in Progress</option>
				</select>
			</div>

			<div class="sub-conatiners">
				<label for="">#. Total Passenger's Booking ?</label>
				<h6 style="color: crimson">*Only six booking allowed</h6>
				<input type="number" placeholder="Total Passengers"
					required="required" name="Total_Passengers">
			</div>
			<h1>* Passenger-Details :</h1>

			<h4>1. First Passenger Details</h4>
			<div class="sub-conatiners">
				<label for="">23. Passenger Age</label> <input type="number"
					placeholder="Enter Passenger Age" required="required"
					name="passengerAge">
			</div>

			<div class="sub-conatiners">
				<label for="">24. Current status of tickets</label> <input
					type="text" placeholder="Enter Current status of tickets"
					required="required" name="ticketStatus">
			</div>
			
			<hr>
			
			<h4>2. Second Passenger Details</h4>
			<div class="sub-conatiners">
				<label for="">25. Passenger Age</label> <input type="number"
					placeholder="Enter Passenger Age" name="passengerAge2">
			</div>

			<div class="sub-conatiners">
				<label for="">26. Current status of tickets</label> <input
					type="text" placeholder="Enter Current status of tickets"
					name="ticketStatus2">
			</div>
			
			<hr>
			
			<h4>3. Third Passenger Details</h4>
			<div class="sub-conatiners">
				<label for="">27. Passenger Age</label> <input type="number"
					placeholder="Enter Passenger Age" name="passengerAge3">
			</div>

			<div class="sub-conatiners">
				<label for="">28. Current status of tickets</label> <input
					type="text" placeholder="Enter Current status of tickets"
					name="ticketStatus3">
			</div>
			
			<hr>
			
			<h4>4. Fourth Passenger Details</h4>
			<div class="sub-conatiners">
				<label for="">29. Passenger Age</label> <input type="number"
					placeholder="Enter Passenger Age" name="passengerAge4">
			</div>

			<div class="sub-conatiners">
				<label for="">30. Current status of tickets</label> <input
					type="text" placeholder="Enter Current status of tickets"
					name="ticketStatus4">
			</div>
			
			<hr>
			
			<h4>5. Fifth Passenger Details</h4>
			<div class="sub-conatiners">
				<label for="">31. Passenger Age</label> <input type="number"
					placeholder="Enter Passenger Age" name="passengerAge5">
			</div>

			<div class="sub-conatiners">
				<label for="">32. Current status of tickets</label> <input
					type="text" placeholder="Enter Current status of tickets"
					name="ticketStatus5">
			</div>
			
			<hr>
			
			<h4>6. Sixth Passenger Details</h4>
			<div class="sub-conatiners">
				<label for="">33. Passenger Age</label> <input type="number"
					placeholder="Enter Passenger Age" name="passengerAge6">
			</div>

			<div class="sub-conatiners">
				<label for="">34. Current status of tickets</label> <input
					type="text" placeholder="Enter Current status of tickets"
					name="ticketStatus6">
			</div>

			<button type="submit">SUBMIT</button>
		</form>
	</div>
</body>
</html>