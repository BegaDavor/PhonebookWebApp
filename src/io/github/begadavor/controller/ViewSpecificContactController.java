package io.github.begadavor.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.github.begadavor.dao.ContactDAOImplementation;
import io.github.begadavor.model.Contact;
import io.github.begadavor.model.User;

/**
 * Servlet implementation class ViewSpecificContactController
 */
@WebServlet({ "/ViewSpecificContactController", "/viewSpecificContact" })
public class ViewSpecificContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Contact contact = null;
		
		String contactID = request.getParameter("getSpecContactID");
		User user = (User) request.getSession().getAttribute("user");
		
		try {
			contact = new ContactDAOImplementation().getContactByID(Integer.parseInt(contactID), user.getUserID());
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getSession().setAttribute("specContact", contact);
		RequestDispatcher rd = request.getRequestDispatcher("editContact.jsp");
		rd.forward(request, response);
		
	}

}
