package nl.gemeente.groningen.tijdschrijven.model;

import java.sql.Date;

public class RegistratieJSON {

    private int idmedewerker;
    private int idproject;
    private Date startdatum;
    private double uren;
    
    public RegistratieJSON() {
    }
    
    public RegistratieJSON(int idmedewerker, int idproject, Date startdatum, double uren) {
	this.setidMedewerker(idmedewerker);
	this.setidProject(idproject);
	this.setStartdatum(startdatum);
	this.setUren(uren);
    }

    public int getidProject() {
	return idproject;
    }

    public void setidProject(int idproject) {
	this.idproject = idproject;
    }

    public int getidMedewerker() {
	return idmedewerker;
    }

    public void setidMedewerker(int idmedewerker) {
	this.idmedewerker = idmedewerker;
    }

    public Date getStartdatum() {
	return startdatum;
    }

    public void setStartdatum(Date startdatum) {
	this.startdatum = startdatum;
    }

    public double getUren() {
	return uren;
    }

    public void setUren(double uren) {
	this.uren = uren;
    }
}
