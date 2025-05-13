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
import java.util.List;
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
public class SearchVisitServlet extends HttpServlet {
@EJB
 private VisitorFacadeLocal vfl;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    try {
        
        String dateOfVisit = request.getParameter("dateOfVisit");
        
        SimpleDateFormat simple = new  SimpleDateFormat("YYYY-MM-DD");
        
        Date date = simple.parse(dateOfVisit);
        
      List<Visitor> visitors = vfl.searchByDate(date);
      
      request.setAttribute("visitors", visitors );
      
      RequestDispatcher rs = request.getRequestDispatcher("SearchVisitOutcome.jsp");
        rs.forward(request, response);
        
        
    } catch (ParseException ex) {
        Logger.getLogger(SearchVisitServlet.class.getName()).log(Level.SEVERE, null, ex);
    }
        
        
    }

  
}
