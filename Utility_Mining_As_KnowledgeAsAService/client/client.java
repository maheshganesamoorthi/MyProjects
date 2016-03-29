/*
 * client.java
 *
 * Created on January 22, 2012, 12:44 PM
 */

package ifum;

import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author KEERTHI
 * @version
 */
public class client extends HttpServlet {
    
    /** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        /* TODO output your page here
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet client</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Servlet client at " + request.getContextPath () + "</h1>");
        out.println("</body>");
        out.println("</html>");
         */
        out.close();
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
    
    /** Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try { // Call Web Service Operation
            ifum.NewWebServiceService service = new ifum.NewWebServiceService();
            ifum.NewWebService port = service.getNewWebServicePort();
            // TODO initialize WS operation arguments here
            java.lang.String item = request.getParameter("items");
            // TODO process result here
            java.lang.String result = port.fum(item);
            System.out.println("Result = "+result);
            request.setAttribute("item",result);
          request.getRequestDispatcher("cart.jsp").forward(request,response);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
    }
    
    /** Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
