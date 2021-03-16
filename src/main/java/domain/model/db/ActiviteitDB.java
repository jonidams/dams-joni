package domain.model.db;

import domain.model.domain.Activiteit;
import java.util.ArrayList;

public class ActiviteitDB {
    private ArrayList<Activiteit> activiteiten = new ArrayList<>();

    public ActiviteitDB() {
        this.addActiviteit(new Activiteit("10/03/2021", "Webontwikkeling 2", "Taak", 30, "Assignment maken"));
        this.addActiviteit(new Activiteit("8/03/2021", "Scripttalen", "Taak", 20, "oefeningen 1"));
        this.addActiviteit(new Activiteit("2/03/2021", "Besturingssystemen", "Test", 10, "linux"));
    }

    public void addActiviteit(Activiteit activiteit) {
        /*if (activiteit == null) {
            throw new IllegalArgumentException();
        }
        if (activiteiten.size() > 0) {
            if (vindDubbeleActiviteit(activiteit)) {
                System.out.println("dubbel");
                throw new IllegalArgumentException("Deze activiteit bestaat al.");
            }
        }*/
        activiteiten.add(activiteit);
    }

    public Activiteit vind(String vak) {
        if (vak == null || vak.isEmpty())
            throw new IllegalArgumentException("Vak mag niet leeg zijn");
        for (Activiteit activiteit : activiteiten) {
            if (activiteit.getVak().equals(vak))
                return activiteit;
        }
        return null;
    }

    public void verwijder(String vak) {
        activiteiten.remove(this.vind(vak));
    }

    public ArrayList<Activiteit> getAll() {
        return activiteiten;
    }

    public Activiteit getMeestGewerkt() {
        if (activiteiten.size() == 0)
            return null;
        Activiteit meestGewerkt = activiteiten.get(0);
        for (Activiteit activiteit : activiteiten) {
            if (activiteit.getMinuten() > meestGewerkt.getMinuten())
                meestGewerkt = activiteit;
        }
        return meestGewerkt;
    }

}

 /*public boolean vindDubbeleActiviteit(Activiteit activiteit) {
        boolean isDubbel = false;
        for (int i = 0; i != activiteiten.size(); i++) {
            System.out.println(activiteiten.get(i));
            if (activiteiten.get(i) != null) {
                if (activiteit.isZelfde(activiteiten.get(i))) {
                    isDubbel = true;
                }
            }
        }
        return isDubbel;
    }*/