<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>IRCTC-CRM-LOGIN</title>
<style type="text/css">
#worng-UserPass {
	position: absolute;
	top: 130px;
	right: 153px;
}
</style>
</head>
<body>
	<%
	String wrongUser = request.getParameter("msg");

	if ("invalid".equals(wrongUser)) {
	%>
	<h6 style="color: red" id="worng-UserPass">Wrong Username or
		Password.</h6>
		
	<style>
	.container-2{
    position: absolute;
    top: 100px;
}
.entryArea-1{
	position: relative;
	height: 80px;
	line-height: 20px;
}
.entryArea-1 input{
	position: absolute;
    outline: none;
    height: 40px;
    width: 250px;
	border-radius: 4px;
    padding: 0 25px;
	border: 2px solid red;
    background: transparent;
	transition: 0.1s ease;
	z-index: 1111;
} 
.labelLine-1{
	position: absolute;
    top: 10px;
	left: 1px;
	font-size: 1em;
	color: red;
	background-color: white;
    padding: 0 5px;
	margin: 0 20px;
	transition: 0.2s ease;
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
    left: 1px;
    top: 2px;
	line-height: 25px;
	padding: 2px;
	transform: translate(-15px,-16px) scale(0.88);
	z-index: 1111;
}
.container-2 i{
	position: absolute;
	left: 6px;
	top: 12px;
	color: red;
}
.entryArea-2{
	position: relative;
	height: 80px;
	line-height: 20px;
}
.entryArea-2 input{
	position: absolute;
    outline: none;
    height: 40px;
    width: 250px;
	border-radius: 4px;
    padding: 0 25px;
	border: 2px solid red;
    background: transparent;
	transition: 0.1s ease;
	z-index: 1111;
} 
.labelLine-2{
	position: absolute;
    top: 10px;
	left: 1px;
	font-size: 1em;
	color: red;
	background-color: white;
    padding: 0 5px;
	margin: 0 20px;
	transition: 0.2s ease;
}
.entryArea-2 input:focus,
.entryArea-2 input:valid{
	color: black;
	border: 2px solid red;
}
.entryArea-2 input:focus+.labelLine-2,
.entryArea-2 input:valid+.labelLine-2{
	color: red;
	height: 20px;
    left: 1px;
    top: 2px;
	line-height: 25px;
	padding: 2px;
	transform: translate(-15px,-16px) scale(0.88);
	z-index: 1111;
}
	</style>
	<%
	}
	%>
	<img alt="not found" src="images/background-CRM.jpg" class="back-img">
	<form action="Fetching_mails" method="post">
		<div class="conatiner-1">
			<div class="brand-label">
				<h2>IRCTC CRM</h2>
				<div class="sign-label">
					<h6>Sign in to continue</h6>
					<div class="container-2">
						<i class="fa-solid fa-user"></i>
						<div class="entryArea-1">
							<input type="text" required="required" name="t1" value="noi_saurabh@granalystic.in">
							<div class="labelLine-1">Username</div>
						</div>
						<div class="entryArea-2">
							<i class="fa-solid fa-unlock-keyhole"></i> <input type="password"
								required="required" name="p1" value="Saurabh@1324">
							<div class="labelLine-2">Password</div>
						</div>
						<button class="btn-1" type="submit">LOGIN</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>