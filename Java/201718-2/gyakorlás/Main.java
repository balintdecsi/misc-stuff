public class Main{
	public static void main(String[] args){
		Negyzet n = new Negyzet(Integer.parseInt(args[0]));
		Kor k = new Kor(Integer.parseInt(args[1]), Boolean.parseBoolean(args[2]));
		
		System.out.println("Negyzet oldala: " + n.getOldal());
		n.setOldal(Integer.parseInt(args[1]));
		System.out.println("Negyzet oldala: " + n.getOldal());
		n.kerulet();
		
		k.leiras();
		k.setSzep(false);
		k.leiras();
	}
}