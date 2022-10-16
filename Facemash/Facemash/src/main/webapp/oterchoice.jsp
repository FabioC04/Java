<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		
		<meta charset="ISO-8859-1">
		<title>See the choices of others</title>
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
			
			.table{
				font-size: 20px;
			}
			
		</style>
		
		<%
		
			int[] votes = (int[])session.getAttribute("votes");
		
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
				<center>These are your previous choices</center>
				<br>
				
				<center>
					<div class="row">
						<div class="col">
							<h3 style="font-weight: 900">Name</h3>
						</div>
						<div class="col">
							<h3 style="font-weight: 900">Num. of choices</h3>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<h4>Haaland</h4>
						</div>
						<div class="col">
							<h4><%= votes[0] %></h4>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<h4>Lewandowski</h4>
						</div>
						<div class="col">
							<h4><%= votes[1] %></h4>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<h4>Mbappe</h4>
						</div>
						<div class="col">
							<h4><%= votes[2] %></h4>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<h4>Messi</h4>
						</div>
						<div class="col">
							<h4><%= votes[3] %></h4>
						</div>
					</div>
					
					<div class="row">
						<div class="col">
							<h4>Ronaldo</h4>
						</div>
						<div class="col">
							<h4><%= votes[4] %></h4>
						</div>
					</div>
					
				</center>
				
				<center><h5><a href="Index.jsp">Repeat your choice</a></h5></center>
				
			</div>
		</div>
		
	</body>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
</html>