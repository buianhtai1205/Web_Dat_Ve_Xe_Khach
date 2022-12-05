package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Admin;
import model.Manager;
import utils.MyUtils;
import utils.Router;

import java.io.IOException;
import java.sql.Connection;

import DAO.AdminDAO;
import DAO.ManagerDAO;

/**
 * Servlet implementation class CheckLoginManagerServlet
 */
@WebServlet(urlPatterns = { "/managerHome" })
public class CheckLoginManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckLoginManagerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		Manager manager = null;
		boolean hasError = false;
		String errorString = null;
		if (userName == null || password == null) {
			hasError = true;
			errorString = "Required username and password!";
		} else {
			try {
				manager = ManagerDAO.findManager(conn, userName, password);
				if (manager == null) {
					hasError = true;
					errorString = "Phone number or password invalid";
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				hasError = true;
				errorString = e.getMessage();
			}
		}
		if (hasError) {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(Router.MANAGER_LOGIN);
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(Router.MANAGER_HOME);
			dispatcher.forward(request, response);
		}
	}

}
