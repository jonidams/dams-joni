package domain.model.db;

import domain.model.domain.Activiteit;
import java.util.ArrayList;

public class ActiviteitDB {
    private final ArrayList<Activiteit> activiteiten = new ArrayList<>();

    public ActiviteitDB() {
        this.addActiviteit(new Activiteit("2021-03-10", "Webontwikkeling 2", "Taak", 30, "Assignment 1"));
        this.addActiviteit(new Activiteit("2021-03-11", "Webontwikkeling 2", "Taak", 30, "Assignment 2"));
        this.addActiviteit(new Activiteit("2021-03-11", "Scripttalen", "Taak", 20, "oefeningen 1"));
        this.addActiviteit(new Activiteit("2021-03-12", "Besturingssystemen 1", "Test", 10, "linux"));
    }

    public void addActiviteit(Activiteit activiteit) {
        activiteiten.add(activiteit);
    }

    public ArrayList<Activiteit> vind(String vak) {
        ArrayList<Activiteit> gevondenActiviteiten = new ArrayList<>();
        if (vak == null || vak.isEmpty())
            throw new IllegalArgumentException("Vak mag niet leeg zijn");
        for (Activiteit activiteit : activiteiten) {
            if (activiteit.getVak().equals(vak))
                gevondenActiviteiten.add(activiteit);
        }
        return gevondenActiviteiten;
    }

    public Activiteit vind2(String vak) {
        if (vak == null ||vak.isEmpty()) {
            throw new IllegalArgumentException("email mag niet leeg zijn.");
        }
        for (Activiteit activiteit : activiteiten) {
            if (activiteit.getVak().equals(vak))
                return activiteit;
        }
        return null;
    }
    public void verwijder(String vak) {
        activiteiten.remove(this.vind2(vak));
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