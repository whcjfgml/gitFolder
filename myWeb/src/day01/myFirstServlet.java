package day01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class myFirstServlet
 */

public class myFirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
    	response.setContentType("text/html; charset=utf-8");
    	PrintWriter out = response.getWriter();
    	
    	try {
    		out.println("<!DOCTYPE html><html><head><meta charset='utf-8'>");
    		out.println("<title>my first HTML</title></head><body>");
    		out.println("<h2 align=\"center\">ù��° HTML ����</h2>");
    		
    		out.println("<hr color=\"red\" /><br/><center>");
    		out.println("<font size='5' face='�ü�ü'>");
    		out.println("������");
    		out.println(new java.util.Date());
    		out.println(" �Դϴ�");
    		out.println("</font></center></body></html>");
    	}finally {
    		out.close();
    	}
    }
}