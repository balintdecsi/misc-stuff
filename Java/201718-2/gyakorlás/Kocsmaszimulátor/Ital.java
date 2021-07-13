public class Ital {
	
	private int ar;
	private int alkoholtartalom;
	
	public Ital(int ar, int alk) {
		this.ar = ar;
		this.alkoholtartalom = alk;
	}
	
	public int getAr() {
		return this.ar;
	}
	
	public void setAr(int ar) {
		this.ar = ar;
	}
	
	public int getAlkoholtartalom() {
		return this. alkoholtartalom;
	}
	
	public void setAlkoholtartalom(int a) {
		this.alkoholtartalom = a;
	}
	
	public String toString() {
		return "Ar: "+ this.ar + ", mennyire baszo?: " + this.alkoholtartalom;
	}
}
