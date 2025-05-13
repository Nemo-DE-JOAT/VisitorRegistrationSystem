/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.Date;
import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Visitor;

/**
 *
 * @author Sxlo
 */
@Local
public interface VisitorFacadeLocal {

    void create(Visitor visitor);

    void edit(Visitor visitor);

    void remove(Visitor visitor);

    Visitor find(Object id);

    List<Visitor> findAll();

    List<Visitor> findRange(int[] range);

    int count();
    List<Visitor> searchByDate(Date date);
    
}
