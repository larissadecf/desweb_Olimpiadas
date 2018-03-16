package model;

public class Modalidades {
	private int id;
	private String nome;
	private int ouro;
	private int metal;
	private int bronze;

	public Modalidades(int id, String nome, int ouro, int metal, int bronze) {
		super();
		setId (id);
		setNome(nome);
		setOuro(ouro);
		setMetal(metal);
		setBronze(bronze);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getOuro() {
		return ouro;
	}

	public void setOuro(int ouro) {
		this.ouro = ouro;
	}

	public int getMetal() {
		return metal;
	}

	public void setMetal(int metal) {
		this.metal = metal;
	}

	public int getBronze() {
		return bronze;
	}

	public void setBronze(int bronze) {
		this.bronze = bronze;
	}
	@Override
	public String toString() {
		return "Modalidades [id=" + id + ", nome=" + nome + ", ouro=" + ouro + ", metal=" + metal +",bronze="+bronze +"]";
	}
}
