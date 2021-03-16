<%@ page import="domain.model.domain.Activiteit" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
            </ul>
        </nav>
    </header>

    <main>
        <section class="inleiding">
            <img src="images/log.jpg" alt="logboek">
            <h2>Mijn studielogboek 2020-2021</h2>
            <p>Op deze pagina vinden jullie wat ik voor school doe. Telkens wordt er aangegeven op welke dag ik werkte, voor welk vak, een korte beschrijving van wat ik heb gedaan, of het een taak-/test-/examen-voorbereiding was, en hoe lang ik er aan heb gezeten.
                <br><br> Het vak waar ik het langste voor heb gewerkt is <%= ((Activiteit)request.getAttribute("meestGewerkt")).getVak() %>. </p>
        </section>
    </main>

    <footer>
        <p>r0795625 - 2020/2021</p>
    </footer>
</div>
</body>
</html>