public class Kocsmaros {
	
	public static int POHAR;
	private String nev; 
	private int penz;
	
	public Kocsmaros(int p, String n) {
		this.penz = p;
		this.nev = n;	
	}
	
	public int getPenz() {
		return this.penz;
	}
	
	public void setPenz(int p) {
		this.penz = p;
	}
	
	public String getNev() {
		return this.nev;
	}
	
	public void setNev(String n) {
		this.nev = n;
	}
	
	public void elmos() {
		if(Kocsmaros.POHAR != 0) {
			--Kocsmaros.POHAR;
			System.out.println(this.nev + " elmosott egy poharat mert jogyerek");
		} else {
		System.out.println("Nincs mar koszos pohar");
		}
	}
	
	public String toString() {
		return "Nev: " + this.nev + ", vagyon: " + this.penz + ", koszos poharak: " + Kocsmaros.POHAR;
	}
}
