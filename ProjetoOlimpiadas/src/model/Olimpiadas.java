package model;

public class Olimpiadas {
	private int ano;
	private String tipo;

	public Olimpiadas(int ano, String tipo) {
		
		setAno(ano);
		setTipo(tipo);
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	@Override
	public String toString() {
		return "Olimpiadas [ano=" + ano + ", tipo=" + tipo + "]";
	}
}
