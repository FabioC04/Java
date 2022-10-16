package Cantanti;

public class Singer {

	String Img;
	String Nome;
	int Positivi;
	int Negativi;
	String UltimoVoto;
	
	public Singer(String Img, String Nome, int Positivi, int Negativi, String UltimoVoto) {
		super();
		this.Img = Img;
		this.Nome = Nome;
		this.Positivi = Positivi;
		this.Negativi = Negativi;
		this.UltimoVoto = UltimoVoto;
	}

	public String getImg() {
		return Img;
	}

	public void setImg(String Img) {
		this.Img = Img;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String Nome) {
		this.Nome = Nome;
	}

	public int getPositivi() {
		return Positivi;
	}

	public void setPositivi(int Positivi) {
		this.Positivi = Positivi;
	}

	public int getNegativi() {
		return Negativi;
	}

	public void setNegativi(int Negativi) {
		this.Negativi = Negativi;
	}

	public String getUltimoVoto() {
		return UltimoVoto;
	}

	public void setUltimoVoto(String ultimoVoto) {
		UltimoVoto = ultimoVoto;
	}
	
}
