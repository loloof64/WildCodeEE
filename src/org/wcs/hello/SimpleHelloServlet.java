package org.wcs.hello;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SimpleHelloServlet", urlPatterns = {"/simple-hello"})
public class SimpleHelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String time = request.getParameter("time");

        int hour = Integer.parseInt(time.substring(0, 2)) + 1;
        String greeting = "";
        if (hour > 20){
            greeting = "Good night";
        } else if (hour > 14){
            greeting = "Good afternoon";
        } else {
            greeting = "Good morning";
        }
        String greetingSentence = String.format("%s, %s %s !", greeting, firstName, lastName);

        request.setAttribute("greeting", greetingSentence);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/custom-hello.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
