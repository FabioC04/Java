<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="ISO-8859-1">
		<title>Facemash</title>
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
			String[] player = new String[]{"img/haland.png", "img/lewandowski.png", "img/mbappe.png", "img/messi.png", "img/ronaldo.jpg"};
			
		
			if(session.getAttribute("token") != "true"){
				int[] choices = new int[5];
				session.setAttribute("votes", choices);
			}
		
			Random rand = new Random();
			
			int casuale = rand.nextInt(player.length);
			
			int casuale2 = rand.nextInt(player.length);
			
			do{
				casuale = rand.nextInt(player.length);
				casuale2 = rand.nextInt(player.length);
			}
			while(casuale == casuale2);
			
			String name = player[casuale];
			
			switch (name){
				case "img/haland.png": 
					name = "Haaland";
					break;
				case "img/lewandowski.png": 
					name = "Lewandowski";
					break;
				case "img/mbappe.png": 
					name = "Mbappe";
					break;
				case "img/messi.png": 
					name = "Messi";
					break;
				case "img/ronaldo.jpg": 
					name = "Ronaldo";
					break;
			}
			
			String name2 = player[casuale2];
			
			switch (name2){
				case "img/haland.png": 
					name2 = "Haaland";
					break;
				case "img/lewandowski.png": 
					name2 = "Lewandowski";
					break;
				case "img/mbappe.png": 
					name2 = "Mbappe";
					break;
				case "img/messi.png": 
					name2 = "Messi";
					break;
				case "img/ronaldo.jpg": 
					name2 = "Ronaldo";
					break;
			}
			
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
				<center>Who is the best? Click tho choose</center>
			</div>
		</div>
		
		<!-- Cards -->
		<center>
		<div class="container">
			<div class="row">
				<!-- Ronaldo -->
				<div class="col">
					<div class="card shadow-lg" style="width: 18rem;">
					  	<a href="yourchoice.jsp?name=<%= name %>"><img src="<%= player[casuale] %>" class="card-img-top"></a>
					</div>
				</div>
				
				<!-- Messi -->
				<div class="col">
					<div class="card shadow-lg" style="width: 18rem;">
					  	<a href="yourchoice.jsp?name=<%= name2 %>"><img src="<%= player[casuale2] %>" class="card-img-top"></a>
					</div>
				</div>
			</div>
		</div>
		</center>
		
		
	</body>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
</html>