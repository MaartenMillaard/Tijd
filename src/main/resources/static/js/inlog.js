/* 
ALGEMENE TOELICHTING OP DE CODE

Dit javasscript zorgt voor de functionaliteit op de inlogpagina.
1) Ophalen medewerkersnamen
2) Tonen in het selectieveld inputName
3) Checken of het ingevoerde wachtwoord overeenkomt met het geregistreerde wachtwoord
*/



function toonMedewerkers(jsonrecordset) {
/* Deze functie toont alle medewerkers:
- doorloopt het json object
- pakt daaruit de namen
- en plaatst deze in het element inputName. */    
    var s = "";
    for (var i = 0; i < jsonrecordset.length; i++) {
// Onderstaand stukje is wat tricky. Ik plaats nu alleen de opties in het select object. Ik weet eigenlijk niet of dat gaat werken.
// Zo niet, dan moet ik het volledig select-object opbouwen in deze lus.
        s = s + "<option>" + jsonrecordset[i].naam + "</option>";

    }
    document.getElementById("inputName").innerHTML = s;
    return false;
}



function getData(surl, callback) {
/*
Deze functie begeleidt de aanroep van de restcontroller. Er moet nog wel wat aan exception handling worden toegevoegd.
*/
    $.ajax({
        url: surl,

        method: 'GET',
        dataType: 'json',
        success: callback,
        error: function (requestObject, error, errorThrown) {

            console.log("error thrown, add handler to exit gracefully");
        },
        timeout: 3000 //to do: research and develop further in combination with error handling
    });
    return false;
}


// De code die bij het gereed zijn van de pagina wordt uitgevoerd. Maakt gebruik van de twee hierboven gedefinieerde functies
$(document).ready(function () {


    getData("http://localhost:8080/medewerkers", toonMedewerkers);

    console.log("document is ready");
});