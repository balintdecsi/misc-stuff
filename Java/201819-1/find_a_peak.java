public class find_a_peak{
	
	
		
	public static Integer find_a_peak(int[] a) throws IllegalArgumentException {
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
	
	  //algoritmus:
	  for(int j = 1 ; j < a.length-2; ++j){
		if((a[j] >= a[j-1])  && (a[j] >= a[j+1])) 
		  return j;
	  }
	  
		//soha nem érhetünk ide:
	  return null;
	}	 		
	
	public static void main(String[] args){
		
		int[] a = new int[args.length];
		for(int i = 0; i < a.length; i++){
			a[i] = Integer.parseInt(args[i]);
		}
		System.out.println(a[find_a_peak(a)]);
	}
	

}