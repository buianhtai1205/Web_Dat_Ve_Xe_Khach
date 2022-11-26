package controller;

import java.io.IOException;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.SQLException;


import utils.*;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import DAO.ChuyenDAOImpl;

import model.Customer;




/**
 * Servlet implementation class TimGhe
 */
@WebServlet("/timghe")
public class TimGhe extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TimGhe() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		super.init();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Connection con = MyUtils.getStoredConnection(request);
		ChuyenDAOImpl c = new ChuyenDAOImpl();
		String idChuyen = request.getParameter("inputIdChuyenXe");
		String idGhe = request.getParameter("gheDangChon");
		String tenKh = request.getParameter("nameUser");
		String phoneUser = request.getParameter("phoneUser");
		String email = request.getParameter("emailUser");
		String pass = generatePassword(8);
		String noiDung = "Chuyến số: " + idChuyen + "Ghế số: " + idGhe + "Địa điểm đón: "  + "Địa điểm trả: "
				+ "\nTài khoản để đăng nhập để kiểm tra vé là: Tên đăng nhập: " + phoneUser +" " + "Mật khẩu: "+ pass;
		boolean hasError = false;
		String errorString = null;
		
		Customer user = null;
		try {
			if(tenKh !=null && phoneUser !=null && email != null) {
				c.addKhachHang(con, tenKh, phoneUser, email, pass);
				session.setAttribute("tenKh", tenKh);
				session.setAttribute("phoneUser",phoneUser);
				session.setAttribute("email", email);
				try {
					// Tìm user trong DB.
					user = DButils.findUser(con, phoneUser);
					int idUser = user.getId();
					if (idChuyen != null && idGhe != null && String.valueOf(idUser) != null) {
						int id = Integer.parseInt(idGhe);
						int chuyen = Integer.parseInt(idChuyen);
						System.out.println(id);
						System.out.println(chuyen);
//						session.setAttribute("chuyen", chuyen);
						c.addChuyen(con, chuyen, id, idUser);
						
					}else{
						errorString = "Có lỗi";
						response.sendRedirect(Router.PAGE_BUY_TICKET);
						
					}
					SendEmail.getInstant().guiMail(email, noiDung);
					String mes = "Email của quý khách đã gửi thành công!";
					request.setAttribute("mes", mes);
					response.sendRedirect(Router.THONG_BAO);
					
				} catch (SQLException e) {
					e.printStackTrace();
					hasError = true;
					errorString = e.getMessage();
				}
			}
			else {
				errorString = "Vui lòng nhập thông tin đầy đủ";
				session.setAttribute("errorString", errorString);
				System.out.print("có lỗi của kh");
				response.sendRedirect(Router.PAGE_BUY_TICKET);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			hasError = true;
			errorString = e.getMessage();
		}

		
		
	}

	public String generatePassword(int len) {
		// ASCII range – alphanumeric (0-9, a-z, A-Z)
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
 
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder();
 
        // each iteration of the loop randomly chooses a character from the given
        // ASCII range and appends it to the `StringBuilder` instance
 
        for (int i = 0; i < len; i++)
        {
            int randomIndex = random.nextInt(chars.length());
            sb.append(chars.charAt(randomIndex));
        }
 
        return sb.toString();
	}

}
