package io.github.begadavor.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.github.begadavor.dao.UserDAOImplementation;
import io.github.begadavor.model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet({ "/LoginController", "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String indexURL = "/index.jsp";
	String profileURL = "/profile.jsp";
	UserDAOImplementation userDAO = new UserDAOImplementation();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean login = false;
		User user = null;
		try {
			login = userDAO.findByLogin(request.getParameter("username"), request.getParameter("password"));
			user = userDAO.findUserByUsernameAndPassword(request.getParameter("username"), request.getParameter("password"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(login == true) {
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher(profileURL).forward(request, response);
		}else {
			String message = "Username or password is wrong. Try again!";
			RequestDispatcher failure = request.getRequestDispatcher(indexURL);
			request.setAttribute("error", message);
			failure.forward(request, response);
		}
	}

}
