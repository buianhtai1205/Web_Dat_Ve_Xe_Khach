package controller;

import java.io.IOException;
import java.sql.Connection;

import DAO.TripDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.MyUtils;
import utils.Router;

/**
 * Servlet implementation class AddTripServlet
 */
@WebServlet(urlPatterns = { "/addTrip" })
public class AddTripServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddTripServlet() {
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
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(Router.MANAGER_ADDTRIP);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = MyUtils.getStoredConnection(request);
		HttpSession session = request.getSession();
		String departure = new String(request.getParameter("departure").getBytes("UTF-8"));
		String destination = new String(request.getParameter("destination").getBytes("UTF-8"));
		String departure_time = new String(request.getParameter("departure_time").getBytes("UTF-8"));
		String price = request.getParameter("price");
		String num_seat = request.getParameter("num_seat");
		String trip_board = new String(request.getParameter("trip_board").getBytes("UTF-8"));
		String userManager = (String) session.getAttribute("userManager");
		int priceM = Integer.parseInt(price);
		int numSeat = Integer.parseInt(num_seat);
		// Trip trip = new Trip();
		TripDAO tripDAO = new TripDAO();
		String errStr = null;
		try {
			tripDAO.addTrip(conn, departure, destination, departure_time, priceM, numSeat, trip_board, userManager);
			System.out.println("23333333");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			errStr = e.getMessage();
		}
		if (errStr != null) {
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(Router.MANAGER_ADDTRIP);
			dispatcher.forward(request, response);
			System.out.println("111111");
		} else {
//			RequestDispatcher dispatcher = request.getServletContext()
//					.getRequestDispatcher(Router.MANAGER_TRIPMANAGEMENT);
//			dispatcher.forward(request, response);
			response.sendRedirect(request.getContextPath() + "/tripManagement");
			System.out.println("222222");
		}
	}

}
