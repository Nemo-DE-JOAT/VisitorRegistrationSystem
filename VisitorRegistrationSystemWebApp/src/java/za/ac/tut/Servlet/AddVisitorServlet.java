/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.VisitorFacadeLocal;
import za.ac.tut.entities.Visitor;

/**
 *
 * @author Sxlo
 */
public class AddVisitorServlet extends HttpServlet {
 @EJB
 private VisitorFacadeLocal vfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     try {
         String name = request.getParameter("Fullname");
         String surname = request.getParameter("surname");
         String idStr = (request.getParameter("id"));
         String gender= request.getParameter("gender");
         String reason = request.getParameter("descrReas");
         String dateOfVisit = request.getParameter("dov");
         
         SimpleDateFormat date = new SimpleDateFormat("YYYY-MM-DD");
         
         Date VisitingDate = date.parse(dateOfVisit);
         if (idStr == null || idStr.length() != 13 || !idStr.matches("\\d{13}")) {
            request.setAttribute("error", "ID number must be exactly 13 digits.");
            RequestDispatcher rs = request.getRequestDispatcher("error.jsp");
            rs.forward(request, response);
            return;
        }

        Long id = Long.parseLong(idStr); 
            
         Visitor visitor = createVisitor(gender, reason, VisitingDate , name,  surname, id);
         
         vfl.create(visitor);
         
       request.setAttribute("name", name);
          
     RequestDispatcher rs = request.getRequestDispatcher("AddVisitOutcome.jsp");
        rs.forward(request, response); 
         
     } catch (ParseException ex) {
         Logger.getLogger(AddVisitorServlet.class.getName()).log(Level.SEVERE, null, ex);
     }
       catch (NumberFormatException ex) {
        Logger.getLogger(AddVisitorServlet.class.getName()).log(Level.SEVERE, null, ex);
        request.setAttribute("error", "Invalid ID format.");
        RequestDispatcher rs = request.getRequestDispatcher("error.jsp");
        rs.forward(request, response);
    }
    
    }
  private Visitor createVisitor(String gender, String reason, Date visitDate , String name, String surname,Long id){
      Visitor vis = new Visitor();
      vis.setDate(visitDate);
      vis.setGender(gender);
      vis.setName(name);
      vis.setSurname(surname);
      vis.setReason(reason);
      vis.setId(id);
      return vis;
      
  }
}
