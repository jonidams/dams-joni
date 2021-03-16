package domain.model.domain;

public class Activiteit {
    private String datum;
    private String vak;
    private String type;
    private String beschrijving;
    private int minuten;

    public Activiteit(String datum, String vak, String type, int minuten, String beschrijving) {
        if (datum.isEmpty()) {
            throw new IllegalArgumentException();
        }
        if (vak.isEmpty()) {
            throw new IllegalArgumentException();
        }
        if (type.isEmpty()) {
            throw new IllegalArgumentException();
        }
        if (minuten < 1) {
            throw new IllegalArgumentException();
        }
        if (beschrijving.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.datum = datum;
        this.vak = vak;
        this.type = type;
        this.minuten = minuten;
        this.beschrijving = beschrijving;
    }

    public Activiteit (String vak) {
        this.setVak(vak);
    }

   /* public boolean isZelfde(Activiteit activiteit2) {
        return this.datum.equals(activiteit2.getDatum()) && this.vak.equals(activiteit2.getVak()) && this.type.equals(activiteit2.getType());
    }*/

    public boolean equals (Object o) {
        if (o instanceof Activiteit) {
            return this.getVak().equals(((Activiteit)o).getVak());
        }
        return false;
    }

    public String getDatum() {
        return datum;
    }
    public void setDatum(String datum) {
        if (datum == null || datum.isEmpty()) {
            throw new IllegalArgumentException("Vul een een datum in.");
        }
        this.datum = datum;
    }

    public String getVak() {
        return vak;
    }
    public void setVak(String vak) {
        if (vak == null) {
            throw new IllegalArgumentException("Duid een vak aan.");
        }
        this.vak = vak;
    }

    public String getType() {
        return type;
    }
    public void setType(String type) {
        if (type == null) {
            throw new IllegalArgumentException("Duid een type aan.");
        }
        this.type = type;
    }

    public int getMinuten() {
        return minuten;
    }
    public void setMinuten(int minuten) {
        if (minuten < 1 || minuten > 1000) {
            throw new IllegalArgumentException("Geef correct aantal minuten");
        }
        this.minuten = minuten;
    }

    public String getBeschrijving() {
        return beschrijving;
    }
    public void setBeschrijving(String beschrijving) {
        if (beschrijving == null || beschrijving.isEmpty()) {
            throw new IllegalArgumentException("Geef een korte beschrijving.");
        }
        this.beschrijving = beschrijving;
    }
}
