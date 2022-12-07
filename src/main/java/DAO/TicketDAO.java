package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Ticket;

public class TicketDAO {

	public static List<Ticket> getlistTicket(Connection conn, String phonenumber) throws SQLException {
		String garage_id = "select garage_id from Manager where phone_number = " + phonenumber;
		PreparedStatement pstm1 = conn.prepareStatement(garage_id);
		ResultSet rs1 = pstm1.executeQuery();
		int _garageid = 0;

		if (rs1.next()) {
			_garageid = rs1.getInt("garage_id");
		}
		String sql = "Select tk.trip_id,c.fullname,c.phone_number,t.departure,sc.musty,s.number_chair,t.trip_board,t.price  From Ticket tk, Trip t, Seat s, Customer c, Schedule sc Where tk.trip_id=t.id and t.garage_id=? and tk.seat_id=s.id and tk.schedule_id=sc.id and tk.customer_id=c.id ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, _garageid);

		ResultSet rs = pstm.executeQuery();
		List<Ticket> list = new ArrayList<Ticket>();
		while (rs.next()) {
			int id = rs.getInt("trip_id");
			String ten = rs.getString("fullname");
			String phone = rs.getString("phone_number");
			String starts = rs.getString("departure");
			String musty = rs.getString("musty");
			String numberchair = rs.getString("number_chair");
			String board = rs.getString("trip_board");
			int price = rs.getInt("price");

			Ticket mh = new Ticket();
			mh.setTripid(id);
			mh.setFullname(ten);
			mh.setPhonenumber(phone);
			mh.setStarts(starts);
			mh.setMusty(musty);
			mh.setNumberchair(numberchair);
			mh.setTripbroad(board);
			mh.setPrice(price);
			list.add(mh);
		}

		return list;
	}

	public static List<Ticket> findTicket(Connection conn, String phonenumber) throws SQLException {
		String sql = "Select tk.trip_id,c.fullname,c.phone_number,t.departure ,sc.musty,s.number_chair,t.trip_board ,t.price From Ticket tk, Trip t, Seat s, Customer c, Schedule sc Where tk.trip_id=t.id and tk.seat_id=s.id and tk.schedule_id=sc.id and tk.customer_id=c.id and c.phone_number='%"
				+ phonenumber + "%'";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Ticket> list = new ArrayList<Ticket>();
		while (rs.next()) {

			int id = rs.getInt("trip_id");
			String ten = rs.getString("fullname");
			String phone = rs.getString("phone_number");
			String starts = rs.getString("departure");
			String musty = rs.getString("musty");
			String numberchair = rs.getString("number_chair");
			String board = rs.getString("trip_board");
			int price = rs.getInt("price");

			Ticket mh = new Ticket();
			mh.setTripid(id);
			mh.setFullname(ten);
			mh.setPhonenumber(phone);
			mh.setStarts(starts);
			mh.setMusty(musty);
			mh.setNumberchair(numberchair);
			mh.setTripbroad(board);
			mh.setPrice(price);
			list.add(mh);
		}
		return list;
	}

}
