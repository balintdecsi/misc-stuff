public class Ember {
	
	private String nev;
	private int penz;
	private int reszegseg = 0;
	private boolean kocsmaban = false;
	
	public Ember(int penz, String nev){
		this.penz = penz;
		this.nev = nev;
	}
	
	public String getNev() {
		return this.nev;
	}
	
	public void setNev(String n) {
		this.nev = n;
	}
	
	public int getPenz() {
		return this.penz;
	}
	
	public void setPenz(int p) {
		this.penz = p;
	}
	
	public int getReszegseg() {
		return this.reszegseg;
	}
	
	public void setReszegseg(int r) {
		this.reszegseg = r;
	}
	
	public boolean isKocsmaban() {
		return this.kocsmaban;
	}
	
	public void setKocsmaban (boolean k) {
		this.kocsmaban = k;
	}
		
	public void iszik(Kocsmaros kocsmaros) {
		if(this.kocsmaban == true) {
			--this.penz;
			++Kocsmaros.POHAR;
			kocsmaros.setPenz(kocsmaros.getPenz() + 1);
			++this.reszegseg;
			if(this.reszegseg > 39) {
				this.alszik();
			}
		} else {
			System.out.println(this.nev + " most epp nincs a tavernaban");
		}
	}
	
	public void alszik() {
		this.reszegseg = 0;
		System.out.println(this.nev + " elaludt");
	}
	
	public void hazamegy() {
		this.kocsmaban = false;
		System.out.println(this.nev + " hazament");		
	}
	
	public void jon() {
		this.kocsmaban = true;
		System.out.println(this.nev + " egy reszeges fasz");		
	}
	
	public void iszik(Kocsmaros kocsmaros, Ital ital) {
		if(this.kocsmaban == true) {
			this.penz -= ital.getAr();
			++Kocsmaros.POHAR;
			kocsmaros.setPenz(kocsmaros.getPenz() + ital.getAr());
			this.reszegseg += ital.getAlkoholtartalom();
			if(this.reszegseg > 39) {
				this.alszik();
			}
		} else {
			System.out.println(this.nev + " most epp nincs a tavernaban");
		}
	}
	
	public String toString() {
		return "Nev: " + this.nev + ", vagyon: " + this.penz + ", reszegseg: " + this.reszegseg + ", kocsmaban?: " + this.kocsmaban;
	}
}
