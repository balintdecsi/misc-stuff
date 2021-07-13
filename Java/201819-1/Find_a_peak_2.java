public class Find_a_peak_2 {
	
	public static Integer find_a_peak_2(int[] a) throws IllegalArgumentException {
	  //határesetek kezelése:
	  if(a == null)
		throw new IllegalArgumentException();
	  if(a.length < 1)
		return null; 
	  if(a.length == 1)
		return 0;
	  if(a[0] >= a[1])
		return 0;
	  if(a[a.length-1] >= a[a.length-2])
		return a.length-1;
		// határesetek kezelése ugyanaz, mint a lassú verzióban!
  
		// algoritmus:
		
	int lo = 1;
	int hi = a.length - 2;
  while (lo <= hi) {
    //kell lennie csucsnak az a[lo..hi]-ban
    int mid = lo + (hi - lo) / 2;
    if (a[mid] < a[mid - 1])
      hi = mid - 1;
    else if (a[mid] < a[mid + 1])
      lo = mid + 1;
    else
      return mid;
  }

  // Soha nem érhetünk ide:
  return null;
	}
	
	public static void main(String[] args){
		
		int[] a = new int[args.length];
		for(int i = 0; i < a.length; i++){
			a[i] = Integer.parseInt(args[i]);
		}
		System.out.println(a[find_a_peak_2(a)]);
	}
	
}
	




