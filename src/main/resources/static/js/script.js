/*
Dit script bestaat nu uit 3 delen:
1) Berekening van de start en einddatum van de weekstaat o.b.v. gekozen jaar- en weeknummer
2) berekening kolomtotalen (per dag)
3) berekening rijtotalen

*/

// DECLARATIE GLOBALE VARIABELEN

var projecten = [];

/*
BLOK BEREKENING START- EN EINDDATUM (WERKT NOG NIET.... MORGEN NIEUWE RONDE NIEUWE KANSEN)
*/



$('.periodSelect').click(function () {
    var begindatum = new Date();
    var begindatum = getDateOfISOWeek($('#selWeek').val, $('#selYear').val);
    console.log(begindatum);

    var einddatum = new Date();
    einddatum.setDate(begindatum.getDate() + 8);
    console.log(einddatum);
    var returnString = "Van " + begindatum.getDate() + "-" + (begindatum.getMonth() + 1) + "-" + begindatum.getFullYear() + " tot en met " + einddatum.getDate() + "-" + (einddatum.getMonth() + 1) + "-" + einddatum.getFullYear();
    console.log(returnString);
    $('#fromUntil').val(returnString);
})

function getDateOfISOWeek(w, y) {
    var datevar = new Date(y, 0, 1 + (w - 1) * 7);
    var dow = datevar.getDay();
    var ISOweekStart = datevar;
    if (dow <= 4)
        ISOweekStart.setDate(datevar.getDate() - datevar.getDay() + 1);
    else
        ISOweekStart.setDate(datevar.getDate() + 8 - datevar.getDay());
    return ISOweekStart;
}

/*
BLOK BEREKENING VAN KOLOMTOTALEN
*/

// Bereken totaal voor maandag
$('.monday').keyup(function () {
    var sum = 0;
    $('.monday').each(function () {
        sum += Number($(this).val());
    });
    $('#totMonday').val(sum);
})

// Bereken totaal voor dinsdag
$('.tuesday').keyup(function () {
    var sum = 0;
    $('.tuesday').each(function () {
        sum += Number($(this).val());
    });
    $('#totTuesday').val(sum);
})

// Bereken totaal voor woensdag
$('.wednesday').keyup(function () {
    var sum = 0;
    $('.wednesday').each(function () {
        sum += Number($(this).val());
    });
    $('#totWednesday').val(sum);
})

// Bereken totaal voor donderdag
$('.thursday').keyup(function () {
    var sum = 0;
    $('.thursday').each(function () {
        sum += Number($(this).val());
    });
    $('#totThursday').val(sum);
})

// Bereken totaal voor vrijdag
$('.friday').keyup(function () {
    var sum = 0;
    $('.friday').each(function () {
        sum += Number($(this).val());
    });
    $('#totFriday').val(sum);
})

/*
BLOK BEREKENING VAN RIJTOTALEN
*/

// Bereken totaal voor rij1
$('.row1').keyup(function () {
    var sum = 0;
    $('.row1').each(function () {
        sum += Number($(this).val());
    });
    $('#r1total').val(sum);
})

// Bereken totaal voor rij2
$('.row2').keyup(function () {
    var sum = 0;
    $('.row2').each(function () {
        sum += Number($(this).val());
    });
    $('#r2total').val(sum);
})

// Bereken totaal voor rij3
$('.row3').keyup(function () {
    var sum = 0;
    $('.row3').each(function () {
        sum += Number($(this).val());
    });
    $('#r3total').val(sum);
})

// Bereken totaal voor rij4
$('.row4').keyup(function () {
    var sum = 0;
    $('.row4').each(function () {
        sum += Number($(this).val());
    });
    $('#r4total').val(sum);
})

// Bereken totaal voor rij5
$('.row5').keyup(function () {
    var sum = 0;
    $('.row5').each(function () {
        sum += Number($(this).val());
    });
    $('#r5total').val(sum);
})

// Bereken totaal voor totalen
$('.form-control').keyup(function () {
    var sum = 0;
    $('.rowtotals').each(function () {
        sum += Number($(this).val());
    });
    $('#totTotal').val(sum);
})


function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function checkCookie() {
    var user = getCookie("user");
    if (user != "") {
        $('#employeeName').text(user);
    } else {
        alert("U bent nog niet ingelogd en wordt teruggeleid naar de inlogpagina");
        window.location.href = "index.html"
    }
}



function haalProjecten() {
    $.ajax({
        url: "/projecten",
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // LOGGING AAN
            console.log("Het JSON object met " + data.length + " records, is ontvangen.");

            for (var i = 0; i < data.length; i++) {
                projecten.push(data[i].naam); // Met push voeg je het element toe aan de array projecten
            };
        },
        error: function (requestObject, error, errorThrown) {

            console.log("error thrown, add handler to exit gracefully");
        },
        timeout: 3000 //to do: research and develop further in combination with error handling
    });
    return false;
};
/*
Onderstaand script bouwt een editable table op op basis van de projectenquery
*/
function bouwTabelOp() {
    var s = "<table id=test><tr><th>Project</th><th>Maandag</th><th>Dinsdag</th><th>Woensdag</th><th>Donderdag</th><th>Vrijdag</th></tr>";
    for (var i = 0; i < projecten.length; i++) {
        s = s + "<tr><td>" + projecten[i] + "</td><td><div contenteditable>0</div></td><td><div contenteditable>0</div></td><td><div contenteditable>0</div></td><td><div contenteditable>0</div></td><td><div contenteditable>0</div></td></tr>";
    }
    s = s + "</table>";
    console.log(s);
    document.getElementById("tabelruimte").innerHTML = s;
}

/*
Een probeersel om de tabel met gevulde waarden om te zetten in JSON formaat. Gaat hier nu even  
via de invoeg toepassing: jquery.tabeltojson.min.js >> kan uiteraard ook anders. Ook afhankelijk
van keuze op welke wijze invoer formulier wordt opgebouwd (ErRe 13-2-2019, 20:16).
*/
$('#run').click( function() {
  var table = $('#test').tableToJSON();
  console.log(table);
  alert(JSON.stringify(table)); 
});


/*
Onderstaand script bouwt een formulier op op basis van de projectenquery
*/
function bouwFormulierOp() {
    var s = `            <div id="formheaders" class="row">
                <div class="col-sm-3">
                    <strong>Project</strong>
                </div>
                <div class="col-sm">
                    <strong>Maandag</strong>
                </div>
                <div class="col-sm">
                    <strong>Dinsdag</strong>
                </div>
                <div class="col-sm">
                    <strong>Woensdag</strong>
                </div>
                <div class="col-sm">
                    <strong>Donderdag</strong>
                </div>
                <div class="col-sm">
                    <strong>Vrijdag</strong>
                </div>
                <div class="col-sm">
                    <strong>Totaal</strong>
                </div>
            </div>`;
    for (var i = 0; i < projecten.length; i++) {
        // per project een rij aanmaken d.m.v. lus
        j=i+1
        s = s + `<div id="row1" class="row">
                <div class="col-sm-3">
                    <strong>`+projecten[i]+`</strong>
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control row`+j+` monday" id="r`+j+`monday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control row`+j+` tuesday" id="r`+j+`tuesday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control row`+j+` wednesday" id="r`+j+`wednesday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control row`+j+` thursday" id="r`+j+`thursday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control row`+j+` friday" id="r`+j+`friday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control rowtotals" id="r`+j+`total" placeholder="0">
                </div>
            </div>`;
        
    }
    // totaalrij toevoegen
    s = s + `<div id="coltotals" class="row">
                <div class="col-sm-3">
                    <strong>Totaal</strong>
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control" id="totMonday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control" id="totTuesday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control" id="totWednesday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control" id="totThursday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control" id="totFriday" placeholder="0">
                </div>
                <div class="col-sm">
                    <input type="number" class="form-control" id="totTotal" placeholder="0">
                </div>
            </div>`;
    console.log(s);
    document.getElementById("regform1").innerHTML = s;
}


$(document).ready(function () {
    console.log("pagina opnieuw geladen (document.ready)");
    checkCookie();
    haalProjecten();
    setTimeout(bouwTabelOp, 3000);
    setTimeout(bouwFormulierOp, 3000);
});
