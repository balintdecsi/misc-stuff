public class Alakzat{
	public static void main(String[] args){
		System.out.println("Negyzet: " + Integer.parseInt(args[0])*Integer.parseInt(args[0]));
		System.out.println("Teglalap: " + Integer.parseInt(args[0])*Integer.parseInt(args[1]));
		System.out.println("Kor: " + Float.parseFloat(args[2])/2*Float.parseFloat(args[2])/2*3.141596);
	}
}