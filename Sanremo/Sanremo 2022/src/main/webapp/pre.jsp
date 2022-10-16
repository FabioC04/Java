<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="Cantanti.Singer" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
	
		<%
		
			Locale locale = request.getLocale(); //istanza oggetto
			String language = locale.getLanguage(); //chiamo metodo lingua
			String country = locale.getCountry(); //chiamo metodo paese
		
			Singer achillelauro = new Singer("img/achille_lauro.jfif", "Achille Lauro", 0, 0,"");
			Singer akaseven = new Singer("img/aka_seven.jfif", "Aka Seven", 0, 0,"");
			Singer anamena = new Singer("img/ana_mena.jfif", "Ana Mena", 0, 0,"");
			Singer dargendamico = new Singer("img/dargen_damico.jfif", "Dargen D'Amico", 0, 0,"");
			Singer ditonellapiagaerettore = new Singer("img/ditonellapiaga_rettore.jfif", "Dito Nella Piaga e Rettore", 0, 0,"");
			Singer elisa = new Singer("img/elisa.jfif", "Elisa", 0, 0,"");
			Singer emma = new Singer("img/emma.jfif", "Emma", 0, 0,"");
			Singer fabriziomoro = new Singer("img/fabrizio_moro.jfif", "Fabrizio Moro", 0, 0,"");
			Singer giannimorandi = new Singer("img/gianni_morandi.jfif", "Gianni Morandi", 0, 0,"");
			Singer giovannitruppi = new Singer("img/giovanni_truppi.jfif", "Giovanni Truppi", 0, 0,"");
			Singer giusyferreri = new Singer("img/giusy_ferreri.jfif", "Giusy Ferreri", 0, 0,"");
			Singer highsnobehu = new Singer("img/highsnob_hu.jfif", "Highsnob e Hu", 0, 0,"");
			Singer irama = new Singer("img/irama.jfif", "Irama", 0, 0,"");
			Singer ivazanicchi = new Singer("img/iva_zanicchi.jfif", "Iva Zanicchi", 0, 0,"");
			Singer larappresentantedilista = new Singer("img/la_rappresentante_di_lista.jfif", "La Rappresentante Di Lista", 0, 0,"");
			Singer levibrazioni = new Singer("img/le_vibrazioni.jfif", "Le Vibrazioni", 0, 0,"");
			Singer mahmoodeblanco = new Singer("img/mahmood_blanco.jfif", "Mahmood e Blanco", 0, 0,"");
			Singer massimoranieri = new Singer("img/massimo_ranieri.jfif", "Massimo Ranieri", 0, 0,"");
			Singer michelebravi = new Singer("img/michele_bravi.jfif", "Michele Bravi", 0, 0,"");
			Singer noemi = new Singer("img/noemi.jfif", "Noemi", 0, 0,"");
			Singer rkomi = new Singer("img/rkomi.jfif", "Rkomi", 0, 0,"");
			Singer sangiovanni = new Singer("img/sangiovanni.jfif", "Sangiovanni", 0, 0,"");
			
			ArrayList<Singer> cantanti = new ArrayList<Singer>();
			
			cantanti.add(achillelauro);
			cantanti.add(akaseven);
			cantanti.add(anamena);
			cantanti.add(dargendamico);
			cantanti.add(ditonellapiagaerettore);
			cantanti.add(elisa);
			cantanti.add(emma);
			cantanti.add(fabriziomoro);
			cantanti.add(giannimorandi);
			cantanti.add(giovannitruppi);
			cantanti.add(giusyferreri);
			cantanti.add(highsnobehu);
			cantanti.add(irama);
			cantanti.add(ivazanicchi);
			cantanti.add(larappresentantedilista);
			cantanti.add(levibrazioni);
			cantanti.add(mahmoodeblanco);
			cantanti.add(massimoranieri);
			cantanti.add(michelebravi);
			cantanti.add(noemi);
			cantanti.add(rkomi);
			cantanti.add(sangiovanni);
			
			session.setAttribute("cantanti", cantanti);
			session.setAttribute("language", language);
			session.setAttribute("country", country);
			
			response.sendRedirect("index.jsp");
			
		%>
	</body>
</html>