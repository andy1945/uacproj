/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ugaidc.co.ug.api.servlets;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
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
public class Index extends HttpServlet {

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
  private RequestDispatcher jsp;

  @EJB
  UserdataFacadeREST userdataFacadeREST;

  public void init(ServletConfig config) throws ServletException {
    ServletContext context = config.getServletContext();
    jsp = context.getRequestDispatcher("/views/index.jsp");

  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

    jsp.forward(request, response);

  }

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Userdata user = new Userdata();
    user.setUsername(username);
    user.setPassword(password);
    
   ResponseUsers respo = userdataFacadeREST.doLogin(user);
     if (respo.isIsError()) {
      request.setAttribute("err", "Wrong Email or Password");
      request.getRequestDispatcher("/views/index.jsp").forward(request, response);
    } else {
       
  
        request.getSession().setAttribute("user", new Gson().toJson(respo.getUserdata()));

      response.sendRedirect("Console");
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
