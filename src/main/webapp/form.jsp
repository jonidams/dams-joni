<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Formulier</title>
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
                <li class="navitem"><a href="Servlet?command=home">Home</a></li>
                <li class="navitem"><a href="form.jsp">Voeg activiteit toe</a></li>
                <li class="navitem"><a href="Servlet?command=overzicht">Overzicht</a></li>
                <li class="navitem"> <a href="zoek.jsp">Zoeken</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Voeg nieuwe activiteit toe</h2>
        <form method="POST" action="Servlet?command=add" novalidate>
            <ul>
                <li>
                    <label for="datum">Datum: </label>
                    <input id="datum" type="date" name="datum">
                </li>

                <li>
                    <label for="vak">Vak: </label>
                    <select id="vak" name="vak">
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

                <li>
                    <label for="minuten">Aantal minuten: </label>
                    <input id="minuten" name="minuten" type="number" min="0" placeholder="X">
                </li>

                <li>
                    <label for="beschrijving">Beschrijving: </label>
                    <textarea id="beschrijving" name="beschrijving"
                              placeholder="Geef een korte beschrijving"></textarea>
                </li>

                <li>
                    <input type="submit" value="Indienen" id="submit">
                </li>
            </ul>
        </form>
    </main>

    <footer>
        <p>r0795625 - 2020/2021</p>
    </footer>
</div>
</body>
</html>