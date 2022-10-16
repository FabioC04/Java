<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Cantanti.Singer" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<%
			Date data = new Date();
			SimpleDateFormat formattazione = new SimpleDateFormat("HH:mm:ss - dd/MM/yy");
			
			String dataFormattata = formattazione.format(data);
		
			ArrayList<Singer> cantanti = (ArrayList<Singer>)session.getAttribute("cantanti");
			
			String cantante = request.getParameter("nome");
			String voto = request.getParameter("voto");
			
			int i = Integer.valueOf(request.getParameter("indice")).intValue();
			
			if(voto.equals("positivo")){
				int tot = cantanti.get(i).getPositivi() + 1;
				
				cantanti.get(i).setPositivi(tot);
				
			}
			if(voto.equals("negativo")){
				int tot = cantanti.get(i).getNegativi() + 1;
				
				cantanti.get(i).setNegativi(tot);
				
			}
			
			cantanti.get(i).setUltimoVoto(dataFormattata);
			
			response.sendRedirect("index.jsp");
			
		
		%>
		
	</head>
	<body>
	
	</body>
</html>