Weapon Tester Class:

//Group Members: Adam Laskey, Brayden Green, Aaron Bacon.
import java.util.*;
class WeaponTester
{
    public static void main(String[] args)
    {
        Weapon Spear = new Weapon("Spear","Medium","Piercing","Simple","1.) Medium Spear: Short blade on a wooden pole.",8,2,3,20);
        Weapon Dagger = new Weapon("Dagger","Medium","Piercing","Simple","2.) Medium Dagger: Short blade, short handle.",6,2,2,10);
        Weapon Kukri = new Weapon("Kukri","Medium","Slashing","Simple","3.) Medium Kukri: Curved blade, weighted for slicing.",4,8,2,0);

        System.out.println(Spear.description);
        System.out.println(Dagger.description);
        System.out.println(Kukri.description);

        int spearDmg = Spear.getDamage();
        int daggerDmg = Dagger.getDamage();
        int kukriDmg = Kukri.getDamage();

        System.out.println("Spear Damage is " + spearDmg);
        System.out.println("Dagger Damage is " + daggerDmg);
        System.out.println("Kukri Damage is " + kukriDmg);

        int mostDmg = 0;

            if(spearDmg < daggerDmg)
            {
            }
            else if(spearDmg < kukriDmg)
            {
            }
            else
            {
                System.out.println("The spear is the winner!");
            }

            if(daggerDmg < spearDmg)
            {
            }
            else if(daggerDmg < kukriDmg)
            {
            }
            else
            {
                System.out.println("The dagger is the winner!");
            }

            if(kukriDmg < spearDmg)
            {
            }
            else if(kukriDmg < daggerDmg)
            {
            }
            else
            {
                System.out.println("The kukri is the winner!");
            }
    }
}
