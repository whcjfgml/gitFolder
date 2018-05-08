package sample;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/Destination" }, initParams = { @WebInitParam(name = "tel", value = "010-9531-0114") })
public class Destination extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   private String tel;
   
   
   @Override
   public void init() throws ServletException {
      tel = getServletConfig().getInitParameter("tel");
   }

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      response.setContentType("text/html; charset=utf-8");
      PrintWriter out = response.getWriter();
      
      String myName = (String) request.getAttribute("myName");
      try {
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Destination</title>");
         out.println("</head>");
         out.println("<body>");
         out.println("<h1> Destination Servlet ¿‘¥œ¥Ÿ</h1>");
         out.println("<h1> myName : " + myName +"</h1>");
         out.println("<h1> myName : " + request.getAttribute("age") +"</h1>");
         out.println("<h1> myName : " + tel +"</h1>");
         out.println("</body>");
         out.println("</html>");
      } finally {
         out.close();
      }
   }

   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      processRequest(request, response);
   }

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      processRequest(request, response);
   }
}