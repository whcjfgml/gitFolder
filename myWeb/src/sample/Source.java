package sample;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Source")
public class Source extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Source Start");
	    
		//RequestDispatcher view = request.getRequestDispatcher("Destination");
        request.setAttribute("myName", "Tommy. Lee");
        request.setAttribute("age", "30");
     //view.forward(request, response);
        
        //������ �̵�
        //1. forward ������� �̵�
        RequestDispatcher view = request.getRequestDispatcher("Destination");
        view.forward(request, response);
        
        //2.redirect ������� �̵�
        response.sendRedirect("Des");
	
	}
	}
       
   