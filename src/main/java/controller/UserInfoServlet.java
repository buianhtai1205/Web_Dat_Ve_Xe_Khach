package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Customer;
import utils.MyUtils;
import utils.Router;

import java.io.IOException;

/**
 * Servlet implementation class UserInfoServlet
 */
@WebServlet("/userInfo")
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		// Kiểm tra người dùng đã đăng nhập (login) chưa.
		Customer loginedUser = MyUtils.getLoginedUser(session);

		// Nếu chưa đăng nhập (login).
		if (loginedUser == null) {
			// Redirect (Chuyển hướng) tới trang login.
			response.sendRedirect(request.getContextPath() + Router.LOGIN);
			return;
		}
		// Lưu thông tin vào request attribute trước khi forward (chuyển tiếp).
		request.setAttribute("user", loginedUser);

		// Nếu người dùng đã login thì forward (chuyển tiếp) tới trang
		//views/userInfoView.jsp
		RequestDispatcher dispatcher //
				= this.getServletContext().getRequestDispatcher(Router.HOME_VIEW_USER);
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
