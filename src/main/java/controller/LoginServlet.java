package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import utils.DButils;
import utils.MyUtils;
import utils.Router;

@WebServlet("/login" )
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public LoginServlet() {
		// TODO Auto-generated constructor stub
		super();
	}

	// Hiển thị trang Login.
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	}

	// Khi người nhập userName & password, và nhấn Submit.
	// Phương thức này sẽ được thực thi.
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String numberPhone = request.getParameter("numberPhone");
		String password = request.getParameter("password");
		String rememberMeStr = request.getParameter("rememberMe");
		boolean remember = "Y".equals(rememberMeStr);

		Customer user = null;
		boolean hasError = false;
		String errorString = null;

		if (numberPhone == null || password == null || numberPhone.length() == 0 || password.length() == 0) {
			hasError = true;
			errorString = "Required number phone and password!";
		} else {
			Connection conn = MyUtils.getStoredConnection(request);
			try {
				// Tìm user trong DB.
				user = DButils.findUser(conn, numberPhone, password);
				
				if (user == null) {
					hasError = true;
					errorString = "Number phone or password invalid";
				}
			} catch (SQLException e) {
				e.printStackTrace();
				hasError = true;
				errorString = e.getMessage();
			}
		}
		// Trong trường hợp có lỗi,
		if (hasError) {
			user = new Customer();
			user.setUserName(numberPhone);
			user.setPassword(password);

			// Lưu các thông tin vào request attribute trước khi forward.
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);
			
			String pageLogin = Router.LOGIN;
			// Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
			RequestDispatcher dispatcher //
					= this.getServletContext().getRequestDispatcher(pageLogin);

			dispatcher.forward(request, response);
		}
		// Trường hợp không có lỗi.
		// Lưu thông tin người dùng vào Session.
		// Và chuyển hướng sang trang userInfo.
		else {
			HttpSession session = request.getSession();

			MyUtils.storeLoginedUser(session, user);
			// Nếu người dùng chọn tính năng "Remember me".
			if (remember) {
				MyUtils.storeUserCookie(response, user);
			}
			// Ngược lại xóa Cookie
			else {
				MyUtils.deleteUserCookie(response);
			}

			// Redirect (Chuyển hướng) sang trang /userInfo.
			response.sendRedirect(request.getContextPath() + "/userInfo");
		}
	}
}
