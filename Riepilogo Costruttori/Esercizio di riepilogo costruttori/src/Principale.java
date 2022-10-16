import java.io.*;

public class Principale {

	public static void main(String[] args) {
		
		String nome;
		String cognome;
		String titolo;
		String professione;

		InputStreamReader input = new InputStreamReader(System.in);
		BufferedReader tastiera = new BufferedReader(input);
		
		Persona persona1 = new Persona(nome = "Marco",cognome = "Bianchi");
		Persona persona2 = new Persona(nome = "Renato",cognome = "Caputo", titolo = "Sig.", professione = "Barbiere");
		
		System.out.println(persona1.ottieniInfoPersona());
		System.out.println(persona2.ottieniInfoPersona());
		
		persona1.impostaTitolo(titolo = "Ing.");
		persona1.impostaProfessione(professione = "Analista programmatore");
		
		System.out.println(persona1.ottieniInfoPersona());

	}

}
