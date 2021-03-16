<%@ page import="domain.model.domain.Activiteit" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Overzicht</title>
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
        <h2>Overzicht</h2>

        <table>
            <thead>
                <tr>
                    <th>Datum</th>
                    <th>Vak</th>
                    <th>Type</th>
                    <th>Aantal minuten</th>
                    <th>Beschrijving</th>
                    <th>Wijzig</th>
                    <th>Verwijder</th>
                </tr>
            </thead>
            <tbody>
            <% ArrayList<Activiteit> activiteiten = (ArrayList<Activiteit>)request.getAttribute("activiteiten");
            for (Activiteit activiteit : activiteiten) { %>
                <tr>
                    <td><%=activiteit.getDatum()%></td>
                    <td><%=activiteit.getVak()%></td>
                    <td><%=activiteit.getType()%></td>
                    <td><%=activiteit.getMinuten()%></td>
                    <td><%=activiteit.getBeschrijving()%></td>
                    <td><a>Wijzig</a></td>
                    <td><a href="Servlet?command=deleteBevestiging&vak=<%= activiteit.getVak() %>">Verwijder</a></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </main>

    <footer>
        <p>r0795625 - 2020/2021</p>
    </footer>
</div>
</body>
</html>