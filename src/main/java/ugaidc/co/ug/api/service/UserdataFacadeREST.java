/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ugaidc.co.ug.api.service;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.container.AsyncResponse;
import javax.ws.rs.container.Suspended;
import javax.ws.rs.core.MediaType;
import ugaidc.co.ug.api.model.ResponseUsers;
import ugaidc.co.ug.entities.Userdata;
import ugaidc.co.ug.utilities.Utils;

/**
 *
 * @author andrew
 */
@Stateless
@Path("ugaidc.co.ug.entities.userdata")
public class UserdataFacadeREST extends AbstractFacade<Userdata> {

  @PersistenceContext(unitName = "ugaidc.co.ug_UGAIDC_war_1.2PU")
  private EntityManager em;

  public UserdataFacadeREST() {
    super(Userdata.class);
  }

  @POST
  @Consumes({MediaType.APPLICATION_JSON})
  public void create(@Suspended final AsyncResponse asyncResponse, Userdata entity) {
    asyncResponse.resume(doCreate(entity));
  }

  @PUT
  @Path("edit/{id}")
  @Consumes({MediaType.APPLICATION_JSON})
  public void edit(@PathParam("id") Integer id, Userdata entity) {
    super.edit(entity);
  }

  @DELETE
  @Path("{id}")
  public void remove(@PathParam("id") Integer id) {
    super.remove(super.find(id));
  }

  @GET
  @Path("{id}")
  @Produces({MediaType.APPLICATION_JSON})
  public Userdata find(@PathParam("id") Integer id) {
    return super.find(id);
  }

  @GET
  @Override
  @Produces({MediaType.APPLICATION_JSON})
  public List<Userdata> findAll() {
    return super.findAll();
  }

  @GET
  @Path("{from}/{to}")
  @Produces({MediaType.APPLICATION_JSON})
  public List<Userdata> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
    return super.findRange(new int[]{from, to});
  }

  @GET
  @Path("count")
  @Produces(MediaType.TEXT_PLAIN)
  public String countREST() {
    return String.valueOf(super.count());
  }

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public ResponseUsers doLogin(Userdata access) {
    ResponseUsers results = new ResponseUsers();

    if (UsernameExixts(access.getUsername())) {
      Userdata Users = findByUsername(access.getUsername());
      // Users.setPassword(null);
      if (Utils.login(Users.getPassword(), access.getPassword())) {
        results.setIsError(false);
        results.setMessage("Success");
        results.setUserdata(Users);

      } else {
        results.setIsError(true);
        results.setMessage("Wrong Username or password");
      }
    } else {
      results.setIsError(true);
      results.setMessage("Wrong Email or password");
    }

    return results;

  }

  public ResponseUsers doCreate(Userdata user) {
    ResponseUsers r = new ResponseUsers();

    if (EmailExixts(user.getEmail())) {
      r.setIsError(true);
      r.setMessage("Email already exists");

    } else if (UsernameExixts(user.getUsername())) {
      r.setIsError(true);
      r.setMessage("Username already exists");
    } else {

      user.setPassword(Utils.signUp(user.getUsername(), user.getPassword()));
      super.create(user);

      if (em.contains(user)) {
        r.setIsError(false);
        r.setMessage("Success");

      } else {
        r.setIsError(true);
        r.setMessage("Fields missing");
      }
    }
    return r;
  }

  public boolean UsernameExixts(String username) {

    if (getEntityManager().createNamedQuery("Userdata.findByUsername").setParameter("username",
            username).getResultList().size() > 0) {
      return true;
    } else {
      return false;
    }
  }

  public boolean EmailExixts(String email) {

    if (getEntityManager().createNamedQuery("Userdata.findByEmail").setParameter("email",
            email).getResultList().size() > 0) {
      return true;
    } else {
      return false;
    }
  }

  public Userdata findByUsername(String username) {

    return (Userdata) getEntityManager().createNamedQuery("Userdata.findByUsername").setParameter("username",
            username).getSingleResult();

  }
}
