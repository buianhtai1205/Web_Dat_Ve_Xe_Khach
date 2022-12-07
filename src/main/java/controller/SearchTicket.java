package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Ticket;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import connect_db.SQLServerConnUtils_SQLJDBC;

/**
 * Servlet implementation class SearchTicket
 */
@WebServlet(urlPatterns = { "/searchTicket" })
public class SearchTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTicket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn = null;
		try {
			conn = SQLServerConnUtils_SQLJDBC.getSQLServerConnection_SQLJDBC();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String idStr = (String) request.getParameter("searchContent");
		List<Ticket> list = null;
		try {
			list = DAO.TicketDAO.findTicket(conn,idStr);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("ticketList", list);

		response.setContentType("text/html;charset=UTF-8");
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/views/managerView/ticketManagement.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
