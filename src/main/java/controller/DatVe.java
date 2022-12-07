package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import utils.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import DAO.ChuyenDAO;
import DAO.CustomerDAO;
import DAO.SeatDAO;
import model.Customer;
import model.Seat;

/**
 * Servlet implementation class TimGhe
 */
@WebServlet("/dat_ve")
public class DatVe extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DatVe() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		super.init();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Connection con = MyUtils.getStoredConnection(request);
		ChuyenDAO c = new ChuyenDAO();
	
		boolean hasError = false;
		String errorString = null;
		String idChuyen = (String) session.getAttribute("idChuyen");
		//String idChuyen= request.getParameter("inputIdChuyenXe");
		String idGhe = request.getParameter("gheDangChon");
		session.setAttribute("idGhe", idGhe);
		
		String tenKh = request.getParameter("nameUser");
		String phoneUser = request.getParameter("phoneUser");
		String email = request.getParameter("emailUser");
		String pass = MyUtils.generatePassword(8);
		String noiDung = "Chuyến số: "  + "Ghế số: " + idGhe + "Địa điểm đón: "  + "Địa điểm trả: "
				+ "\nTài khoản để đăng nhập để kiểm tra vé là: Tên đăng nhập: " + phoneUser +" " + "Mật khẩu: "+ pass;

		
		Customer user = null;
		try {
			if(idGhe !=null && idChuyen != null && tenKh !=null && phoneUser !=null && email != null) {
				c.addKhachHang(con, tenKh, phoneUser, email, pass);
				session.setAttribute("tenKh", tenKh);
				session.setAttribute("phoneUser",phoneUser);
				session.setAttribute("email", email);
				try {
					// Tìm user trong DB.
					user = CustomerDAO.findUser(con, phoneUser);
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
								response.sendRedirect(request.getContextPath() + Router.THONG_BAO);
								
							}
							
						} catch (Exception e) {
							// TODO: handle exception
							e.printStackTrace();
							response.sendRedirect(request.getContextPath() + Router.PAGE_BUY_TICKET);
						}
						
						
					}else{
						errorString = "Có lỗi";
						response.sendRedirect(request.getContextPath() + Router.PAGE_BUY_TICKET);
						
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
				response.sendRedirect(request.getContextPath()  + Router.PAGE_BUY_TICKET);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			hasError = true;
			errorString = e.getMessage();
		}		
	}

}
