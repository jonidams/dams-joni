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
                <li class="navitem"> <a href="form.jsp">Voeg toe</a> </li>
                <li class="navitem"> <a href="Servlet?command=overzicht">Overzicht</a> </li>
                <li class="navitem"> <a href="zoek.jsp">Zoeken</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Zoek een activiteit</h2>
        <form method="Get" action="Servlet" novalidate>
            <p>Wat zoek je?</p>
            <input id="ttt" type="hidden" value="zoek" name="command">
            <ul>
                <li>
                    <label for="vak">Vak: *</label>
                    <select id="vak" name="vak" required>
                        <option value="" disabled selected>Kies een vak</option>
                        <option> Besturingssystemen 1</option>
                        <option> Bomen en grafen</option>
                        <option> Buisness Process Management</option>
                        <option> Computernetwerken 2</option>
                        <option> Databanken</option>
                        <option> OO Porgrammeren</option>
                        <option> Scripttalen</option>
                        <option> Webontwikkeling 2</option>
                    </select>
                </li>
                <li>
                    <label for="type">Type: </label>
                    <select id="type" name="type">
                        <option value="" disabled selected>Kies een type</option>
                        <option>Taak</option>
                        <option>Test</option>
                        <option>Examen</option>
                    </select>
                </li>
            </ul>
            <p>
                <label for="zoek"></label>
                <input id="zoek" type="submit" value="Vind vak">
            </p>
        </form>
    </main>

    <footer>
        <p>r0795625 - 2020/2021</p>
    </footer>
</div>
</body>
</html>
