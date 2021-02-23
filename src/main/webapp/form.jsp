<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulier</title>
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
            <h2>Voeg nieuwe activiteit toe</h2>
            <form>
                <ul>
                    <li><label>Datum: <input type="date" name="datum"></label></li>
                    <li><label>Vak: <select name="vak">
                        <option value="" disabled selected>Kies een vak</option>
                        <option> Besturingssystemn 1</option>
                        <option> Bomen en grafen</option>
                        <option> Buisness Process Management</option>
                        <option> Computernetwerken 2</option>
                        <option> Databanken</option>
                        <option> OO Porgrammeren</option>
                        <option> Scripttalen</option>
                        <option> Webontwikkeling 2</option>
                    </select></label></li>
                    <li><label>Beschrijving: <textarea name="comments" placeholder="Geef een korte beschrijving"></textarea></label></li>
                    <li><label>Type: <select name="type">
                        <option value="" disabled selected>Kies een type</option>
                        <option>Taak</option>
                        <option>Test</option>
                        <option>Examen</option>
                    </select></label></li>
                    <li><label>Aantal minuten: <input type="number"></label></li>
                    <li><input type="submit" value="Indienen"></li>
                </ul>
            </form>
        </main>

        <footer>
            <p>r0795625</p>
        </footer>
    </div>
    </body>
</html>