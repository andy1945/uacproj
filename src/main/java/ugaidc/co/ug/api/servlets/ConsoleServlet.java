/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ugaidc.co.ug.api.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.oltu.oauth2.common.exception.OAuthSystemException;

/**
 *
 * @author andrew
 */
@WebServlet(name = "Console", urlPatterns = {"/Console"})
public class ConsoleServlet extends HttpServlet {
 private RequestDispatcher jsp;

 public void init(ServletConfig config) throws ServletException {
    ServletContext context = config.getServletContext();
    jsp = context.getRequestDispatcher("/views/console.jsp");

  }

  /**
   *
   * @param request
   * @param response
   * @throws ServletException
   * @throws IOException
   * @throws URISyntaxException
   * @throws OAuthSystemException
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    
  }

  
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
   
  }

  /**
   *  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException,URISyntaxException, OAuthSystemException {
    
  }
   * Returns a short description of the servlet.
   *
   * @return a String containing servlet description
   */
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}
