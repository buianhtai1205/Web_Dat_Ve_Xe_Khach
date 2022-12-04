package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import model.Seat;
import model.Trip;


public class TripDAO {

	public TripDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public Trip getTripByTicket(Connection conn, String phoneNumber) throws SQLException {
		
		String idTrip = "select trip_id,seat_id from Ticket join Customer on Customer.id= Ticket.customer_id where phone_number = " + phoneNumber;
		PreparedStatement pstm1 = conn.prepareStatement(idTrip);
		ResultSet rs1 = pstm1.executeQuery();
		String _idTrip = null;

		if(rs1.next()) {
			_idTrip = rs1.getString("trip_id");
		}
		//get trip
		String trip = "select * from Trip where Trip.id =" + _idTrip;
		PreparedStatement pstm2 = conn.prepareStatement(trip);
		ResultSet rs2 = pstm2.executeQuery();
		
		if (rs2.next()) {
			String departure = rs2.getString("departure");
			String destination = rs2.getString("destination");
			String departure_time = rs2.getString("departure_time");
			int price = rs2.getInt("price");
			int idGara = rs2.getInt("garage_id");
			
			Trip tr = new Trip();
			tr.setDeparture(departure);
			tr.setDestination(destination);
			tr.setDeparture_time(departure_time);
			tr.setPrice(price);
			tr.setGarage_id(idGara);
			return tr;
		}
		return null;
	}

	public List<Seat> getAllGheOnTrip(Connection con, int idChuyen) {
		
		/* List<Seat> list = new ArrayList<Seat>(); */
		List<Seat> list = new ArrayList<>();
		String sql1 = "select * from seat where trip_id = ?";
		PreparedStatement pre = null;
		
		
		try {
			pre = con.prepareStatement(sql1);
			pre.setInt(1, idChuyen);
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				Seat seat = new Seat();
				int id = res.getInt("id");
				String numberChair = res.getString("number_chair");
				String status = res.getString("status");
				seat.setId(id);;
				seat.setNumber_chair(numberChair);
				seat.setStatus(status);
				list.add(seat);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
		}
		
		return list;
	}


}
