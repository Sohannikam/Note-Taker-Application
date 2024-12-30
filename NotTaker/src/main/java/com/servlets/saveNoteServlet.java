package com.servlets;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

//import org.hibernate.Hibernate;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class saveNoteServlet
 */
public class saveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public saveNoteServlet() {
		super();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter(); 
		try {
			String title=request.getParameter("title");
			String Content= request.getParameter("content");
			
			Note note= new Note(title,Content,new Date());
//			Hibernate save()
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx= s.beginTransaction();
			s.save(note);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			
			out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View All Notes</a></h1>");
			
		}
		catch (Exception e) {
			e.printStackTrace();
			response.setContentType("text/html");
         	out.print("<h3 style='color:red'> "+e.getMessage()+"</h3>");
		}
	}

}
