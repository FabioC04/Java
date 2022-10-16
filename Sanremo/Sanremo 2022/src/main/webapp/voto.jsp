<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Cantanti.Singer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Vota</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Spartan:wght@500&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
		<style>
			header{
				color: white;
				background-color:blue;
				text-align:center;
				font-size:100px;
			}
		</style>
		<%
		
			ArrayList<Singer> cantanti = (ArrayList<Singer>)session.getAttribute("cantanti");
			int i = Integer.valueOf(request.getParameter("indice")).intValue();
		
		%>
	</head>
	<body style="font-family: 'Spartan', sans-serif">
		
		
		<header>Sanremo 2022</header><br><br>
		
		<center><div class="card shadow-lg" height="200" style="width:300px">
			<img src="<%= cantanti.get(i).getImg() %>" class="card-img-top">
			<div class="card-body">
				<h5 class="card-title"><%= cantanti.get(i).getNome() %></h5>
				<div class="row">
					<div class="col"><a class="btn btn-success" href="confermaVoto.jsp?voto=positivo&indice=<%= i %>"><i class="bi bi-heart-fill"></i></a></div>
					<div class="col"><a class="btn btn-danger" href="confermaVoto.jsp?voto=negativo&indice=<%= i %>"><i class="bi bi-heartbreak-fill"></i></a></div>
				</div>
  			</div>
		</div></center>
	
	</body>
</html>