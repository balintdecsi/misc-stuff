import java.util.concurrent.ThreadLocalRandom;
import java.util.*;

public class Random {
	public static void main(String[] args) {
		int[] random = new int[Integer.parseInt(args[0])];
		for(int j = 0; j < random.length; j++) {
			random[j] = ThreadLocalRandom.current().nextInt(1, 11);
			System.out.println(random[j]);
		}
	}
}