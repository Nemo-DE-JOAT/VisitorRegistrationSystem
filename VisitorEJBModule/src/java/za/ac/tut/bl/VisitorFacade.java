/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Visitor;

/**
 *
 * @author Sxlo
 */
@Stateless
public class VisitorFacade extends AbstractFacade<Visitor> implements VisitorFacadeLocal {

    @PersistenceContext(unitName = "VisitorEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VisitorFacade() {
        super(Visitor.class);
    }

    @Override
    public List<Visitor> searchByDate(Date date) {
        
      Query query = em.createQuery("SELECT v FROM Visitor v WHERE v.date = ?1");
        query.setParameter(1, date);
     List<Visitor> visitors = query.getResultList();
        return visitors;
        
    }

   
    
}
