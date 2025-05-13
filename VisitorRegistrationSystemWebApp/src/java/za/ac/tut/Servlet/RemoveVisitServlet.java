/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
public class RemoveVisitServlet extends HttpServlet {
 @EJB
 private VisitorFacadeLocal vfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        Long id = Long.parseLong(request.getParameter("id"));
        Visitor visitor = createVisitor( id); 
        vfl.remove(visitor);
        request.setAttribute("id", id);
      RequestDispatcher rs = request.getRequestDispatcher("removeVisitOutcome.jsp");
      rs.forward(request, response);
        
        
        
    }

  private Visitor createVisitor(Long id){
     Visitor visitor = new Visitor();
          visitor.setId(id);
      
      return visitor;
  }

}
