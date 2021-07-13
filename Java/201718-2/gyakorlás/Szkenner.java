import java.util.*;

public class Szkenner {
	private static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		System.out.println("Szia! Milyen nap van ma?");
		String nap = sc.nextLine();
		System.out.println("Szep ez a " + nap + " reggel! Hany ora van?");
		int ora = sc.nextInt();
		System.out.println((ora > 8? "Mar oran kene lenned!" : "Aludhatsz meg :)"));
	}
}