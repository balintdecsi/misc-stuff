import java.io.*;
import java.util.*;

public class Fajl {
	public static void main(String[] args) {
		try(
			Scanner sc = new Scanner(new File(args[0]));
			) {
				while(sc.hasNextLine()) {
					System.out.println(sc.nextLine());
				}
			} catch(IOException e) {
				System.err.println("Hiba: " + e.getMessage());
			}
	}
}