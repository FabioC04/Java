<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="ISO-8859-1">
		<title>Your choice</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400&display=swap" rel="stylesheet">
		
		<style>
			
			.titolo{
				background-color: #8A0000;
				color: white;
				font-size: 120px;
			}
			
			.best{
				color: black;
				font-size: 50px;
				margin-top: 30px;
			}
			
		</style>
		
		<%
		
			String choice = request.getParameter("name");
		
			int[] votes = (int[])session.getAttribute("votes");
			
			switch (choice) {
			
				case "Haaland":
					votes[0] = votes[0] + 1;
					break;
				
				case "Lewandowski":
					votes[1] = votes[1] + 1;
					break;
				
				case "Mbappe":
					votes[2] = votes[2] + 1;
					break;
					
				case "Messi":
					votes[3] = votes[3] +1;
					break;
					
				case "Ronaldo":
					votes[4] = votes[4] + 1;
					break;
			}
			
			session.setAttribute("votes", votes);
			
			session.setAttribute("token", "true");
		
		%>
		
	</head>
	<body style="font-family: 'Source Sans Pro', sans-serif;">
	
		<!-- Navbar -->
		<div class="titolo">
			<div class="container">
				<center>FACEMASH</center>
			</div>
		</div>
		
		<!-- Who is the best -->
		<div class="best">
			<div class="container">
				<center>You have chosen <%= request.getParameter("name") %></center>
				<center><a href="oterchoice.jsp">See the other choices</a></center>
			</div>
		</div>
	
	</body>
	
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
</html>