package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public HomeServlet() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	 @Override
	   protected void doGet(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {

	       // Forward toi trang /WEB-INF/views/homeView.jsp
	       // (Người dùng không bao giờ truy cập trực tiếp được vào các trang JSP
	       // đặt trong WEB-INF)
	       RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/homeView.jsp");
	       
	       dispatcher.forward(request, response);
	       
	   }
	
	 @Override
	   protected void doPost(HttpServletRequest request, HttpServletResponse response)
	           throws ServletException, IOException {
	       doGet(request, response);
	   }
	 
	 
	 

}
