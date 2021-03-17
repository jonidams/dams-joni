<%@ page import="domain.model.domain.Activiteit" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% Activiteit activiteit= (Activiteit) request.getAttribute("activiteit"); %>
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
        <h2>Gevonden</h2>

        <p>Je vroeg naar volgende gegevens: <br>
            <%
                ArrayList<Activiteit> activiteiten = (ArrayList<Activiteit>) request.getAttribute("activiteiten");
                for (Activiteit a : activiteiten) { %> <br>
                <%= a.format() %></p>
        <%}%>
    </main>

    <footer>
        <p>r0795625 - 2020/2021</p>
    </footer>
</div>
</body>
</html>
