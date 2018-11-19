package io.github.begadavor.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.github.begadavor.dao.ContactDAOImplementation;
import io.github.begadavor.model.Contact;
import io.github.begadavor.model.User;

@WebServlet({ "/AddContactController", "/addContact" })
public class AddContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContactDAOImplementation contactDAO = new ContactDAOImplementation();
	String contactsURL = "/contacts.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		int userID = 0;
		if(user != null)
			userID = user.getUserID();
		try {
			
			contactDAO.addContact(new Contact(request.getParameter("firstName"), request.getParameter("lastName"), request.getParameter("city"), request.getParameter("email"), request.getParameter("phoneNumber")), userID);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher(contactsURL).forward(request, response);
	}

}
