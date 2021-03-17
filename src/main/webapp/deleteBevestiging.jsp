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
                <li class="navitem"> <a href="form.jsp">Voeg toe</a> </li>
                <li class="navitem"> <a href="Servlet?command=overzicht">Overzicht</a> </li>
                <li class="navitem"> <a href="zoek.jsp">Zoeken</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Bevestiging</h2>
            <p>Weet je zeker dat je <%= request.getParameter("vak") %> wilt verwijderen?</p>
        <form action="Servlet?command=delete&vak=<%= request.getParameter("vak") %>" method="POST">
            <input type="submit" value="Ja"/>
        </form>
        <p><a href="Servlet?command=overzicht">Annuleer</a> indien je <%= request.getParameter("vak") %> niet wil verwijderen</p>
    </main>

    <footer>
        <p>r0795625 - 2020/2021</p>
    </footer>
</div>
</body>
</html>