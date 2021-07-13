
class Dwarf implements Comparable<Dwarf>{

    String name;
    int beardLength;
    int fightingSkill;
    int footballSkill;

    public Dwarf(String name, int beardLength, int fightingSkill, int footballSkill) {
        this.name = name;
        this.beardLength = beardLength;
        this.fightingSkill = fightingSkill;
        this.footballSkill = footballSkill;
    }

    public String toString() {
        return this.name + " (" + this.beardLength + ", " + this.fightingSkill + ", " + this.footballSkill + ")";
    }
	
	@Override
	public int compareTo(Book a){
		return beardLength.compareTo(a.beardLength);
}

public class Main {

    /**
     * Ankh-Morporkban kozeleg a hagyomanyos szabadfogasu troll-torpe
     * focirangado. (Attol szabadfogasu, hogy a csapattagok szabadon foghatnak a
     * kezukben bunkot vagy csatabardot.) A csapat tagjait Dongalabu Dorin mar
     * elore kivalasztotta kepessegeik alapjan, ennek adminisztralasaban kell
     * segitenunk. A temerdek jelentkezot harom kepesseg alapjan itelik meg:
     * szakallhossz, fegyverforgatas es labdakezeles (beardLength,
     * fightingSkill, footballSkill). Cel a jelentkezok rangsorba allitasa, majd
     * ez alapjan a megadott rangu torpek megtalalasa. A torpek rangsorolasa a
     * kovetkezo: \begin{enumerate} ket jelentkezo kozul termeszetesen a
     * hosszabb szakallu az alkalmasabb azonos szakallhossz eseten a magasabb
     * harci kepesseg a donto amennyiben pedig mindket ertek megegyezik a ket
     * torpenel, akkor a labdakezelest kell figyelembe venni teljesen megegyezo
     * kepessegÅ± torpek kozul azt reszesitik elonyben, aki elobb jelentkezett a
     * rangadora
     *
     * Tehat a feladat a jelentkezok rangsorba allitasa, majd ez alapjan a
     * megadott rangu torpek meghatarozasa.
     *
     * @param dwarves A jelentkezo torpeket tartalmazzo tomb. Maximalis merete:
     * 2000000
     * @param teamMembers A csapattagok tudas alapu rangsorban elfoglalt helyet
     * hatarozza meg, pl: ha a tomb [1, 45] elemeket tartalmazza, akkor az 1. es
     * 45. legmagasabb osszkepessegu torpe fog a csapatba bekerulni. (Azonos
     * kepessegek eseten barmelyik jelentkezo valaszthato.)
     *
     * @return A csapatba bekerult jelentkezo nevet tartalmazo tomb (a nevek a
     * bemenet 2. tombjenek megfelelo sorrendben szerepeljenek).
     */
    public static void main(String[] args) {
		Dwarf[] dwarfs = {new Dwarf("Gummli", 99, 78, 77), new Dwarf("Gimli", 100, 78, 78)};
		Arrays.sort(dwarfs);
		System.out.println(Arrays.asList(dwarfs));
	
		//String[] csapat = new String[teamMembers.length];
		//int index = 0;
		//for(int t: teamMembers){
		//	csapat[index] = dwarfs[t - 1].name;
		//	index++;
		//}
		
		
	}
	
}

}

