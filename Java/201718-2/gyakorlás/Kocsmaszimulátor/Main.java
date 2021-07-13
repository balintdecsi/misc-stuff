public class Main {
	
	public static void main(String[] args) {
		Ember jozsi = new Ember(400, "Jozsi");
		Ember pityu = new Ember(200, "Pityu");
		Ember pista = new Ember(100, "Pista battya");
		Ember balint = new Ember(50, "Balint gazda");
		Ember feri = new Ember(25, "Feri");
		
		Kocsmaros elemer = new Kocsmaros(50, "Elemer");
		Kocsmaros geza = new Kocsmaros(25, "Geza");
		
		Ital sor = new Ital(28, 5);
		Ital bor = new Ital(30, 11);
		Ital palinka = new Ital(50, 52);
		Ital vodka = new Ital(42, 37);
		Ital abszint = new Ital(80, 80);
		Ital kevert = new Ital(10, 50);
		
		pityu.jon();
		pityu.iszik(elemer, sor);
		pista.jon();
		pista.iszik(elemer, bor);
		pityu.iszik(elemer, sor);
		balint.jon();
		balint.iszik(elemer, palinka);
		balint.hazamegy();
		pista.iszik(elemer, bor);
		pityu.iszik(elemer, vodka);
		elemer.elmos();
		elemer.elmos();
		
		System.out.println(pityu.toString());
		System.out.println(pista.toString());
		System.out.println(balint.toString());
		System.out.println(elemer.toString());
		
		feri.jon();
		jozsi.jon();
		balint.jon();
		feri.iszik(geza, sor);
		jozsi.iszik(geza, abszint);
		balint.iszik(geza, palinka);
		pista.iszik(elemer, sor);
		pityu.iszik(elemer, bor);
		balint.hazamegy();
		
		System.out.println(pityu.toString());
		System.out.println(jozsi.toString());
		System.out.println(pista.toString());
		System.out.println(balint.toString());
		System.out.println(feri.toString());
		System.out.println(elemer.toString());
		System.out.println(geza.toString());
	}
}

		