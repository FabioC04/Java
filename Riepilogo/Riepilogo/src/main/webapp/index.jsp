<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Pack.Studente" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Riepilogo ArrayList</title>
	</head>
	<body>
		
		
		<%
		
			ArrayList<Studente> Aula = new ArrayList<Studente>();
			
			Aula.add(new Studente(1, "z", "Rocco", "12/05/1950", "Via Roma 12", "Milano", "it7gf23o8ihfbt6gx"));
			Aula.add(new Studente(2, "e", "Kekko", "12/05/1950", "Via Ancona 13", "Roma", "it7gf23o8ihfbt6gx"));
			Aula.add(new Studente(3, "a", "Peres", "12/05/1950", "Via Bari 14", "Bari", "it7gf23o8ihfbt6gx"));
			Aula.add(new Studente(4, "hy", "Pluto", "12/05/1950", "Via Marte 104", "Plutone", "it7gf23o8ihfbt6gx"));
			
			Collections.sort(Aula);
			
			
			
			Iterator iterator = Aula.iterator();
			
			while(iterator.hasNext()){
				Studente studente = (Studente)iterator.next();
				out.println("Nome: " + studente.getNome() + ", ");
				out.println("Codice Fiscale: " + studente.getCodiceFiscale() + ", ");
				out.println("Data di nascita: " + studente.getDataDiNascita() + "<br>");
			}
		
		%>
		
		
	</body>
</html>