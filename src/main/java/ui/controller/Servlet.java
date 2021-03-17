package ui.controller;
import domain.model.db.ActiviteitDB;
import domain.model.domain.Activiteit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    private final ActiviteitDB activiteitDB = new ActiviteitDB();

    public Servlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destination;
        String command = request.getParameter("command");
        if (command == null) {
            command = "home";
        }
        switch (command) {
            case "overzicht":
                destination = overzicht(request);
                break;
            case "add":
                destination = add(request);
                break;
            case "deleteBevestiging":
                destination = getDeleteBevestiging();
                break;
            case "delete":
                destination = delete(request);
                break;
            case "zoek":
                destination = zoek(request);
                break;
            default:
                destination = home(request);
        }
        request.getRequestDispatcher(destination).forward(request, response);
    }

    private String getDeleteBevestiging() {
        return "deleteBevestiging.jsp";
    }

    private String home(HttpServletRequest request) {
        Activiteit meestGewerkt = activiteitDB.getMeestGewerkt();
        request.setAttribute("meestGewerkt", meestGewerkt);
        return "index.jsp";
    }

    private String overzicht(HttpServletRequest request) {
        request.setAttribute("activiteiten", activiteitDB.getAll());
        return "overzicht.jsp";
    }

    private String add(HttpServletRequest request) {
        String datum = request.getParameter("datum");
        String vak = request.getParameter("vak");
        String type = request.getParameter("type");
        String minuten = request.getParameter("minuten");
        String beschrijving = request.getParameter("beschrijving");
        if (!datum.isEmpty() && vak != null && !vak.isEmpty() && type != null && !type.isEmpty() && !minuten.isEmpty() && Integer.parseInt(minuten) >= 1 && !beschrijving.isEmpty()) {
            Activiteit activiteit = new Activiteit(datum, vak, type, Integer.parseInt(minuten), beschrijving);
            activiteitDB.addActiviteit(activiteit);
            return overzicht(request);
        }
        else {
            return "form.jsp";
        }
    }
    private String delete(HttpServletRequest request) {
        String vak = request.getParameter("vak");
        activiteitDB.verwijder(vak);
        return overzicht(request);
    }

    private String zoek(HttpServletRequest request) {
        String vak = request.getParameter("vak");
        String type = request.getParameter("type");
        String destination;

        if (vak==null && type == null) {
            destination="zoek.jsp";
        }
        else if (type == null) {
            ArrayList<Activiteit> activiteiten = activiteitDB.vindVak(vak);
            if (activiteiten.size() == 0) {
                destination = "nietGevonden.jsp";
            }
            else {
                destination = "gevonden.jsp";
                request.setAttribute("activiteiten", activiteiten);
            }
        }
        else {
            ArrayList<Activiteit> activiteiten = activiteitDB.vind(vak, type);
            if (activiteiten.size() == 0) {
                destination = "nietGevonden.jsp";
            }
            else {
                destination = "gevonden.jsp";
                request.setAttribute("activiteiten", activiteiten);
            }
        }
        return destination;
    }
}