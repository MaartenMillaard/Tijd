package nl.gemeente.groningen.tijdschrijven.controllers;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import nl.gemeente.groningen.tijdschrijven.model.Medewerker;
import nl.gemeente.groningen.tijdschrijven.repositories.MedewerkerRepository;

@RestController
public class MedewerkerController {

    @GetMapping("/medewerkers")
    public List<Medewerker> getAllMedewerkers() throws SQLException {
	return MedewerkerRepository.getAlleMedewerkers();

    }

    @GetMapping("/medewerker")
    public Medewerker getMedewerkerByNaam(@RequestParam(name = "naam") String naam) throws SQLException {
	return MedewerkerRepository.getMedewerkerByNaam(naam);

    }

    @PostMapping("/newMedewerker")
    public int insertMedewerker(@RequestParam(name = "emailadres") String emailadres,
	    @RequestParam(name = "naam") String naam, 
	    @RequestParam(name = "wachtwoord") String wachtwoord,
	    @RequestParam(name = "team") String team, 
	    @RequestParam(name = "rol") String rol,
	    @RequestParam(name = "contracturen") double contracturen,
	    @RequestParam(name = "startdatum") String startdatum, 
	    @RequestParam(name = "einddatum") String einddatum) {
	
	return MedewerkerRepository.insertMedewerker(emailadres, naam, wachtwoord, team, rol, contracturen, startdatum,
		einddatum);

    }

    @PutMapping("/changeMedewerker")
    public int updateMedewerker(
	    @RequestParam(name = "idmedewerker") int idmedewerker,
	    @RequestParam(name = "emailadres") String emailadres, 
	    @RequestParam(name = "naam") String naam,
	    @RequestParam(name = "wachtwoord") String wachtwoord, 
	    @RequestParam(name = "team") String team,
	    @RequestParam(name = "rol") String rol, 
	    @RequestParam(name = "contracturen") double contracturen,
	    @RequestParam(name = "startdatum") Date startdatum, 
	    @RequestParam(name = "einddatum") Date einddatum) {
	return MedewerkerRepository.updateMedewerker(idmedewerker, emailadres, naam, wachtwoord, team, rol,
		contracturen, startdatum, einddatum);

    }

    @GetMapping("/medewerker/wachtwoord")
    public int isWachtwoordCorrect(@RequestParam(name = "naam") String emailadres,
	    @RequestParam(name = "wachtwoord") String wachtwoord) throws SQLException {
	return MedewerkerRepository.isWachtwoordCorrect(emailadres, wachtwoord);
    }
}
