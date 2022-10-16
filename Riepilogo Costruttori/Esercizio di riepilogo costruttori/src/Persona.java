public class Persona {

	String nome = "";
	String cognome = "";
	String titolo = "";
	String professione = "";
	
	public Persona(String nome, String cognome) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.titolo = "";
		this.professione = "Disoccupato";
	}
	
	public Persona(String nome, String cognome, String titolo, String professione) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.titolo = titolo;
		this.professione = professione;
	}

	public String ottieniInfoPersona() {
		return "Persona [nome=" + nome + ", cognome=" + cognome + ", titolo=" + titolo + ", professione=" + professione
				+ "]";
	}
	
	public void impostaTitolo(String titolo) {
		
		this.titolo = titolo;
		
	}
	
	public void impostaProfessione(String professione) {
		
		this.professione = professione;
		
	}
	
}
