<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Overzicht</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="stijl.css">
        <link rel="icon" href="fotos/log.jpg">
    </head>

    <body>
    <div id="container">
        <header>
            <h1>Mijn studielogboek</h1>
            <nav>
                <ul class="nav">
                    <li class="navitem"> <a href="index.jsp">Home</a> </li>
                    <li class="navitem"> <a href="form.jsp">Voeg activiteit toe</a> </li>
                    <li class="navitem"> <a href="overzicht.jsp">Overzicht</a> </li>
                </ul>
            </nav>
        </header>

        <main>
            <table>
                <thead>
                <tr><th>Datum</th><th>Vak</th><th>Beschrijving</th><th>Type</th><th>Aantal minuten</th><th>Wijzig</th><th>Verwijder</th> </tr>
                </thead>
                <tbody>
                <tr class="donker"><td>10/02/2021</td><td>Sctipttalen</td><td>Oefeningen maken</td><td>Opdracht</td><td>20</td><td>x</td><td>x</td> </tr>
                <tr class="licht"><td>12/02/2021</td><td>Webontwikkeling 2</td><td>Wireframe maken</td><td>Opdracht</td><td>30</td><td>x</td><td>x</td> </tr>
                <tr class="donker"><td>13/02/2021</td><td>OO Porgameren</td><td>Labo afwerken</td><td>Opdracht</td><td>15</td><td>x</td><td>x</td> </tr>
                <tr class="licht"><td>15/02/2021</td><td>Bomen en grafen</td><td>Hoofdstuk 1 leren</td><td>Test</td><td>60</td><td>x</td><td>x</td> </tr>

                </tbody>
            </table>
        </main>

        <footer>
            <p>r0795625</p>
        </footer>
    </div>
    </body>
</html>