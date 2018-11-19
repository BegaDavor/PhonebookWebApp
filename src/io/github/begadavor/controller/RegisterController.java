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

/**
 * Servlet implementation class RegisterController
 */
@WebServlet({ "/RegisterController", "/register" })
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    String indexURL = "/index.jsp";
    UserDAOImplementation userDAO = new UserDAOImplementation();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		if(userDAO != null) {
			if(userDAO.findUserByUsername(request.getParameter("username"))) {
				request.setAttribute("message", "Username exists. Try another username.");
				forward = indexURL;
				RequestDispatcher rd = request.getRequestDispatcher(forward);
				rd.forward(request, response);
				return;
			}
			try {
				userDAO.addUser(request.getParameter("firstname"), request.getParameter("lastname"), request.getParameter("email"),request.getParameter("regUsername"), request.getParameter("regPassword"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			forward = indexURL;
		}
		request.getRequestDispatcher(forward).forward(request, response);
		
	}

}
