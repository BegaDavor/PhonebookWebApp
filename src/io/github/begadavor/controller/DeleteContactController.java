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
import io.github.begadavor.model.User;

@WebServlet({ "/DeleteContactController", "/deleteContact" })
public class DeleteContactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContactDAOImplementation contactDAO = new ContactDAOImplementation();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		User user = (User) request.getSession().getAttribute("user");
		String contactID = request.getParameter("deleteContactID");

		if (!contactID.isEmpty()) {
			try {
				contactDAO.deleteContact(Integer.parseInt(contactID), user.getUserID());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		RequestDispatcher rd = request.getRequestDispatcher("contacts.jsp");
		rd.forward(request, response);

	}

}
