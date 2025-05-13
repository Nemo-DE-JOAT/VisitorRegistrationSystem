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

/**
 *
 * @author Sxlo
 */
public class GetVisitListSizeServlet extends HttpServlet {

    @EJB
 private VisitorFacadeLocal vfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer size = vfl.count();
        
        request.setAttribute("size", size);
     RequestDispatcher rs = request.getRequestDispatcher("getListSizeOutcome.jsp");
       rs.forward(request, response);
    }


   
}
