package controller;

import java.io.IOException;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import utils.*;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import DAO.ChuyenDAOImpl;
import DAO.SeatDAO;
import DAO.TripDAO;
import model.Customer;
import model.Seat;





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
	
		boolean hasError = false;
		String errorString = null;

		String idChuyen= request.getParameter("inputIdChuyenXe");
		String idGhe = request.getParameter("gheDangChon");
		List<String> listSeat = new ArrayList<String>(Arrays.asList(idGhe.split(",")));
//		String idGhe2 = request.getParameter("gheDangChon3");
		
		System.out.println(listSeat);
//		System.out.println(idGhe2);
		session.setAttribute("idGhe", idGhe);
		
		String tenKh = request.getParameter("nameUser");
		String phoneUser = request.getParameter("phoneUser");
		String email = request.getParameter("emailUser");
		String pass = generatePassword(8);
		String noiDung = "Chuyến số: "  + "Ghế số: " + idGhe + "Địa điểm đón: "  + "Địa điểm trả: "
				+ "\nTài khoản để đăng nhập để kiểm tra vé là: Tên đăng nhập: " + phoneUser +" " + "Mật khẩu: "+ pass;

		
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
//						int id = Integer.parseInt(idGhe);
						int idchuyen = Integer.parseInt(idChuyen);
						try {
							SeatDAO seatDAO = new SeatDAO();
							Seat seat = new Seat();
							seat = seatDAO.getIdSeat(con, idGhe);
							int idSeat = seat.getId();
							
							if(String.valueOf(idSeat) != null) {
								c.addChuyen(con, idchuyen, idSeat, idUser);
								
								SendEmail.getInstant().guiMail(email, noiDung);
								String mes = "Email của quý khách đã gửi thành công!";
								request.setAttribute("mes", mes);
								
							}
							
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
							response.sendRedirect(Router.THONG_BAO);
						}
						
						
					}else{
						errorString = "Có lỗi";
						response.sendRedirect(Router.PAGE_BUY_TICKET);
						
					}
					
					
				} catch (SQLException e) {
					e.printStackTrace();
					hasError = true;
					errorString = e.getMessage();
				}
			}
			else {
				errorString = "Vui lòng nhập thông tin đầy đủ";
				session.setAttribute("errorString", errorString);
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
