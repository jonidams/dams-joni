<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Studielogboek</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/stijl.css">
    <link rel="icon" href="images/log.jpg">
</head>

<body>
<div id="container">
    <header>
        <h1>Mijn studielogboek</h1>
        <nav>
            <ul class="nav">
                <li class="navitem"> <a href="Servlet?command=home">Home</a> </li>
                <li class="navitem"> <a href="form.jsp">Voeg activiteit toe</a> </li>
                <li class="navitem"> <a href="Servlet?command=overzicht">Overzicht</a> </li>
                <li class="navitem"> <a href="zoek.jsp">Zoeken</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Bevestiging</h2>
        <p>Bedankt voor in te vullen.</p>
        <p>Je vulde de volgende activiteit in:</p>
        <ul>
            <li>Datum: </li>
            <li>Vak: </li>
            <li>Type: </li>
            <li>Minuten: </li>
            <li>Beschrijving: </li>
        </ul>

        <p>Ga naar <a href="Servlet?command=overzicht">overzicht</a></p>
    </main>

    <footer>
        <p>r0795625</p>
    </footer>
</div>
</body>
</html>