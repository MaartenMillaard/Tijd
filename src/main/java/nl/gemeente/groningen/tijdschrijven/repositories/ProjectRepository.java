package nl.gemeente.groningen.tijdschrijven.repositories;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import nl.gemeente.groningen.tijdschrijven.connectionmanager.ConnectionManager;
import nl.gemeente.groningen.tijdschrijven.model.Project;

public class ProjectRepository {

    private static final Logger logger = Logger.getLogger(ProjectRepository.class);

    public static List<Project> getAlleProjecten() throws SQLException {
	String sql = "select * " + "from tblproject";
	List<Project> projecten = new ArrayList<>();
	try (PreparedStatement stmt = ConnectionManager.getConnection().prepareStatement(sql);
		ResultSet result = stmt.executeQuery();) {

	    while (result.next()) {

		Project project = new Project();
		
		project.setIdProject(result.getInt("idproject"));
		project.setNaam(result.getString("naam"));
		project.setCategorie(result.getString("categorie"));
		project.setOpdrachtgever(result.getString("opdrachtgever"));
		project.setDirectie(result.getString("directie"));
		project.setStartdatum(result.getDate("startdatum"));
		project.setEinddatum(result.getDate("einddatum"));

		projecten.add(project);

	    }
	} catch (SQLException e) {
	    logger.error(e.getErrorCode() + ": " + e.getMessage());
	}
	return projecten;
    }

    public static Project getProjectByNaam(String naam) throws SQLException {
	String sql = "select * " + "from tblproject " + "where naam = ?";
	ResultSet result = null;
	Project project = new Project();
	try (PreparedStatement stmt = ConnectionManager.getConnection().prepareStatement(sql);) {

	    stmt.setString(1, naam);
	    result = stmt.executeQuery();

	    result.next();

	    project.setIdProject(result.getInt("idproject"));
	    project.setNaam(result.getString("naam"));
	    project.setCategorie(result.getString("categorie"));
	    project.setOpdrachtgever(result.getString("opdrachtgever"));
	    project.setDirectie(result.getString("directie"));
	    project.setStartdatum(result.getDate("startdatum"));
	    project.setEinddatum(result.getDate("einddatum"));

	    result.close();
	} catch (SQLException e) {
	    logger.error(e.getErrorCode() + ": " + e.getMessage());
	} finally {
	    if (result != null) {
		result.close();
	    }
	}
	return project;
    }

    public static int insertProject(Project project) throws SQLException {
	String sql = "insert into tblProject(naam, categorie, opdrachtgever, directie, startdatum, einddatum) "
		+ "values(?, ?, ?, ?, ?, ?)";
	try (PreparedStatement stmt = ConnectionManager.getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
	    stmt.setString(1, project.getNaam());
	    stmt.setString(2, project.getCategorie());
	    stmt.setString(3, project.getOpdrachtgever());
	    stmt.setString(4, project.getDirectie());
	    stmt.setDate(5, (Date) project.getStartdatum());
	    stmt.setDate(6, (Date) project.getEinddatum());

	    stmt.executeUpdate();
	    
	    ResultSet key = stmt.getGeneratedKeys();
	    key.next();
	    return key.getInt(1);
	} catch (SQLException e) {
	    logger.error(e.getErrorCode() + ": " + e.getMessage());
	}
	return -1;
    }

    public static boolean updateProject(Project project) throws SQLException {
	String sql = "update tblProject " + "set naam = ?" + ", categorie = ?" + ", opdrachtgever = ?" + ", directie = "
		+ ", startdatum = ?" + ", einddatum = ?";
	try (PreparedStatement stmt = ConnectionManager.getConnection().prepareStatement(sql)) {
	    stmt.setString(1, project.getNaam());
	    stmt.setString(2, project.getCategorie());
	    stmt.setString(3, project.getOpdrachtgever());
	    stmt.setString(4, project.getDirectie());
	    stmt.setDate(5, (Date) project.getStartdatum());
	    stmt.setDate(6, (Date) project.getEinddatum());

	    stmt.executeQuery();
	} catch (SQLException e) {
	    logger.error(e.getErrorCode() + ": " + e.getMessage());
	}
	return false;
    }

    private ProjectRepository() {
    }

}
