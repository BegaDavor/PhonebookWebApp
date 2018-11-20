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


@WebServlet({ "/EditContactController", "/editContact" })
public class EditContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Contact contact = (Contact) request.getSession().getAttribute("specContact");
		User user = (User) request.getSession().getAttribute("user");
		
		contact.setFirstName(request.getParameter("editFirstName"));
		contact.setLastName(request.getParameter("editLastName"));
		contact.setCity(request.getParameter("editCity"));
		contact.setEmail(request.getParameter("editEmail"));
		contact.setPhoneNumber(request.getParameter("editPhoneNumber"));
		
		
		try {
			new ContactDAOImplementation().updateContact(contact, user.getUserID());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("contacts.jsp").forward(request, response);
		
	}

}
