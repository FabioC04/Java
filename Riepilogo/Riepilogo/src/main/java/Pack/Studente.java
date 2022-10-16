package Pack;
public class Studente implements Comparable {

	String Nome, Cognome, DataDiNascita, Indirizzo, Citta, CodiceFiscale;
	int Id;
	
	public Studente(int id, String nome, String cognome, String dataDiNascita, String indirizzo, String citta, String codiceFiscale) {
		super();
		Nome = nome;
		Cognome = cognome;
		DataDiNascita = dataDiNascita;
		Indirizzo = indirizzo;
		Citta = citta;
		CodiceFiscale = codiceFiscale;
		Id = id;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getCognome() {
		return Cognome;
	}

	public void setCognome(String cognome) {
		Cognome = cognome;
	}

	public String getDataDiNascita() {
		return DataDiNascita;
	}

	public void setDataDiNascita(String dataDiNascita) {
		DataDiNascita = dataDiNascita;
	}

	public String getIndirizzo() {
		return Indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		Indirizzo = indirizzo;
	}

	public String getCitta() {
		return Citta;
	}

	public void setCitta(String citta) {
		Citta = citta;
	}

	public String getCodiceFiscale() {
		return CodiceFiscale;
	}

	public void setCodiceFiscale(String codiceFiscale) {
		CodiceFiscale = codiceFiscale;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	@Override
	public int compareTo(Object obj) {
		Studente studente = (Studente)obj;
		
		return (this.Nome).compareTo(studente.Nome);
	}
	
}
