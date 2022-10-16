<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Locale" %>
<%@ page import="Cantanti.Singer" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Sanremo 2022</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Spartan:wght@500&display=swap" rel="stylesheet">
		
		<style>
			.card{
				margin-bottom:50px;
			}
			header{
				color: white;
				background-color:blue;
				text-align:center;
				font-size:100px;
			}
			.distance{
				margin-top: 15px;
				margin-bottom: 15px;
			}
		</style>
		
		
		<%
		
			String language = String.valueOf(session.getAttribute("language"));
			String country = String.valueOf(session.getAttribute("country"));
			
			HashMap<String, String> lingua = new HashMap<String, String>();
			
			lingua.put("italiano", "vota ora");
			lingua.put("english", "vote now");
			
			String chiave = "";
			
			if(country.equals("IT")) {
				chiave = "italiano";
			} else {
				chiave = "english";
			}
		
		 	ArrayList<Singer> cantanti = (ArrayList<Singer>)session.getAttribute("cantanti");
			int i=0;
			int j=0;
		%>
		
	</head>
	<body style="font-family: 'Spartan', sans-serif">	
	
		<header>Sanremo 2022</header><br><br>
	
		<center><% for(i=0; i<10; i=i+2){ j=i+1;%>

			<div class="container">
				<div class="row">
					<div class="col">
						<div class="card shadow-lg" height="200" style="width:300px">
						  	<img src="<%= cantanti.get(i).getImg() %>" class="card-img-top">
						  	<div class="card-body">
							    <h5 class="card-title"><%= cantanti.get(i).getNome() %></h5>
							    <div class="row distance">
							    	<div class="col"><h6 class="card-text" style="color: green"><%= cantanti.get(i).getPositivi() %></h6></div>
							    	<div class="col"><h6 class="card-text" style="color: red"><%= cantanti.get(i).getNegativi() %></h6></div>
							    </div>
							    <%
							    	String temp = String.valueOf(cantanti.get(i).getUltimoVoto());
							    
								    if(temp.equals("")){
							    		
							    	} else {
							    		out.print("<div class=\"row distance\"><div class=\"col\"><h6 class=\"card-text\" style=\"color: gray\">" + temp + "</h6></div></div>");
							    	}
							    %>
							    <a href="voto.jsp?nome=<%= cantanti.get(i).getNome() %>&indice=<%=i %>" class="btn btn-primary"><%= lingua.get(chiave) %></a>
  							</div>
						</div>
					</div>

					<div class="col">
						<div class="card shadow-lg" height="200" style="width:300px">
						  	<img src="<%= cantanti.get(j).getImg()%>" class="card-img-top">
						  	<div class="card-body">
							    <h5 class="card-title"><%= cantanti.get(j).getNome() %></h5>
							    <div class="row distance">
							    	<div class="col"><h6 class="card-text" style="color: green"><%= cantanti.get(j).getPositivi() %></h6></div>
							    	<div class="col"><h6 class="card-text" style="color: red"><%= cantanti.get(j).getNegativi() %></h6></div>
							    </div>
							    <%
							    	temp = String.valueOf(cantanti.get(j).getUltimoVoto());
							    
								    if(temp.equals("")){
							    		
							    	} else {
							    		out.print("<div class=\"row distance\"><div class=\"col\"><h6 class=\"card-text\" style=\"color: gray\">" + temp + "</h6></div></div>");
							    	}
							    %>
							    <a href="voto.jsp?nome=<%= cantanti.get(j).getNome() %>&indice=<%=j %>" class="btn btn-primary"><%= lingua.get(chiave) %></a>
  							</div>
						</div>
					</div>
				</div>
			</div>

		<% } %>
		
		<% for(i=10; i<20; i=i+2){ j=i+1;%>

			<div class="container">
				<div class="row">
					<div class="col">
						<div class="card shadow-lg" height="200" style="width:300px">
						  	<img src="<%= cantanti.get(i).getImg()%>" class="card-img-top">
						  	<div class="card-body">
							    <h5 class="card-title"><%= cantanti.get(i).getNome() %></h5>
							    <div class="row distance">
							    	<div class="col"><h6 class="card-text" style="color: green"><%= cantanti.get(i).getPositivi() %></h6></div>
							    	<div class="col"><h6 class="card-text" style="color: red"><%= cantanti.get(i).getNegativi() %></h6></div>
							    </div>
							    <%
							    	String temp = String.valueOf(cantanti.get(i).getUltimoVoto());
							    
								    if(temp.equals("")){
							    		
							    	} else {
							    		out.print("<div class=\"row distance\"><div class=\"col\"><h6 class=\"card-text\" style=\"color: gray\">" + temp + "</h6></div></div>");
							    	}
							    %>
							    <a href="voto.jsp?nome=<%= cantanti.get(i).getNome() %>&indice=<%=i %>" class="btn btn-primary"><%= lingua.get(chiave) %></a>
  							</div>
						</div>
					</div>

					<div class="col">
						<div class="card shadow-lg" height="200" style="width:300px">
						  	<img src="<%= cantanti.get(j).getImg()%>" class="card-img-top">
						  	<div class="card-body">
							    <h5 class="card-title"><%= cantanti.get(j).getNome() %></h5>
							    <div class="row distance">
							    	<div class="col"><h6 class="card-text" style="color: green"><%= cantanti.get(j).getPositivi() %></h6></div>
							    	<div class="col"><h6 class="card-text" style="color: red"><%= cantanti.get(j).getNegativi() %></h6></div>
							    </div>
							    <%
							    	temp = String.valueOf(cantanti.get(j).getUltimoVoto());
							    
							    	if(temp.equals("")){
							    		
							    	} else {
							    		out.print("<div class=\"row distance\"><div class=\"col\"><h6 class=\"card-text\" style=\"color: gray\">" + temp + "</h6></div></div>");
							    	}
							    %>
							    <a href="voto.jsp?nome=<%= cantanti.get(j).getNome() %>&indice=<%=j %>" class="btn btn-primary"><%= lingua.get(chiave) %></a>
  							</div>
						</div>
					</div>
				</div>
			</div>

		<% } %></center>


	
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</html>