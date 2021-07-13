public class Negyzet{
	int oldal;
	public Negyzet(int a){
		this.oldal = a;
	}
	
	public int getOldal(){
		return this.oldal;
	}
	
	public void setOldal(int o){
		this.oldal = o;
	}
	
	public void kerulet(){
		System.out.println("ennek a negyzetnek a kerulete: " + oldal*4);
	}
	
	public int terulet(){
		return oldal*oldal;
	}
}