/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class GetListServlet extends HttpServlet {

 @EJB
 private VisitorFacadeLocal vfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        List<Visitor> visitors = vfl.findAll();
        
       request.setAttribute("visitors", visitors);
        
     RequestDispatcher rs = request.getRequestDispatcher("getListOutcome.jsp");
     
     rs.forward(request, response);
        
    }
 

}
