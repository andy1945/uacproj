/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ugaidc.co.ug.api.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ugaidc.co.ug.api.model.ResponseUsers;
import ugaidc.co.ug.api.service.UserdataFacadeREST;
import ugaidc.co.ug.entities.Userdata;

/**
 *
 * @author andrew
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class RegisterServelet extends HttpServlet {

  private RequestDispatcher jsp;
  
  @EJB
  UserdataFacadeREST userdataFacadeREST;

  /**
   * Processes requests for both HTTP <code>GET</code> and
   * <code>POST</code> methods.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  public void init(ServletConfig config) throws ServletException {
    ServletContext context = config.getServletContext();
    jsp = context.getRequestDispatcher("/views/register.jsp");

  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    jsp.forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String firstname = request.getParameter("firstname");
    String surname = request.getParameter("surname");
    String phonenumber = request.getParameter("email");
    String age = request.getParameter("age");
    String hivstatus = request.getParameter("hivstatus");
    String username = request.getParameter("username");
    
    Userdata user = new Userdata();
    user.setAge(Integer.parseInt(age));
    user.setEmail(email);
    user.setFirstname(firstname);
    user.setSurname(surname);
    user.setHivstatus(hivstatus);
    user.setPassword(password);
    user.setUsername(username);
    user.setPhonenumber(phonenumber);
    
    ResponseUsers respo = userdataFacadeREST.doCreate(user);
    
    if(respo.isIsError()){
        request.setAttribute("suc", "Your account was successfully created click Login");
    request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    }else{
       request.setAttribute("suc", "Your account was successfully created click Login");
    request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    }
   

  }

  /**
   * Returns a short description of the servlet.
   *
   * @return a String containing servlet description
   */
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}
