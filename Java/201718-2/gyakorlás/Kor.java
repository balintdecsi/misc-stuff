public class Kor{
	int sugar;
	boolean szep;
	public Kor(int r, boolean s){
		this.sugar = r;
		this.szep = s;
	}
	
	public int getSugar(){
		return this.sugar;
	}
	
	public void setSugar(int r){
		this.sugar = r;
	}
	
	public boolean getSzep(){
		return this.szep;
	}
	
	public void setSzep(boolean s){
		this.szep = s;
	}
	
	public void leiras(){
		System.out.println("En egy " + (szep ? "szep " : "ronda ") + "kor vagyok akinek a kerulete " + sugar*2*3.141596f);
	}
}
	
	
	
	