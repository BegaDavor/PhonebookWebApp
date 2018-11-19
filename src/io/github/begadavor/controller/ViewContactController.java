package io.github.begadavor.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.github.begadavor.dao.ContactDAOImplementation;
import io.github.begadavor.model.Contact;
import io.github.begadavor.model.User;

@WebServlet({ "/ViewContactController", "/viewContacts" })
public class ViewContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContactDAOImplementation contactDAO = new ContactDAOImplementation();
	String contactsURL = "contacts.jsp";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user = (User) request.getSession().getAttribute("user");
		List<Contact> contacts = new ArrayList<>();
		try {
			contacts = contactDAO.getContacts(user.getUserID());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("contactsList", contacts);
		RequestDispatcher dispatcher = request.getRequestDispatcher(contactsURL);
		
		
			dispatcher.forward(request, response);
		
		
	}

}
