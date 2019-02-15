package nl.gemeente.groningen.tijdschrijven.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import nl.gemeente.groningen.tijdschrijven.model.Project;
import nl.gemeente.groningen.tijdschrijven.repositories.ProjectRepository;

@RestController
public class ProjectController {

    @GetMapping("/projecten")
    public List<Project> getAlleProjecten() throws SQLException {
	return ProjectRepository.getAlleProjecten();
    }

    @GetMapping("/project")
    public Project getProjectByNaam(@RequestParam(name = "naam") String naam) throws SQLException {
	return ProjectRepository.getProjectByNaam(naam);
    }
    
    @PostMapping("/nieuwProject")
    public int nieuwProject(@RequestParam(name="naam") String naam, 
    		@RequestParam(name="categorie") String categorie,
    		@RequestParam(name="opdrachtgever") String opdrachtgever,
    		@RequestParam(name="directie") String directie,
    		@RequestParam(name="startdatum") String startdatum,
    		@RequestParam(name="einddatum") String einddatum) throws SQLException {
    	   	
    	return ProjectRepository.insertProject(naam, categorie, opdrachtgever, directie, startdatum, einddatum);
    }
    
}
