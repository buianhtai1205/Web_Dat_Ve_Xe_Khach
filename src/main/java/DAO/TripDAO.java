package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Garage;
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
		String _idSeat = null;

		if(rs1.next()) {
			_idTrip = rs1.getString("trip_id");
			_idSeat = rs1.getString("seat_id");
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
			tr.setGarageID(idGara);
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
				int status = res.getInt("status");
				seat.setId(id);
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
	
	public static ArrayList<String> getListDeparture(Connection con)
	{
		ArrayList<String> list = new ArrayList<String>();
		String sql = "SELECT DISTINCT departure FROM Trip";
		PreparedStatement pre = null;
		
		try {
			pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				String departure = res.getString("departure");
				list.add(departure);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static ArrayList<String> getListDestination(Connection con)
	{
		ArrayList<String> list = new ArrayList<String>();
		String sql = "SELECT DISTINCT destination FROM Trip";
		PreparedStatement pre = null;
		
		try {
			pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				String destination = res.getString("destination");
				list.add(destination);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static ArrayList<Trip> getListTrip(Connection con, String departute, String destination, String departure_time) 
	{
		ArrayList<Trip> list_trip = new ArrayList<Trip>();
		String sql = "SELECT Trip.*, Garage.fullname, Garage.address, Garage.description  FROM Trip JOIN Garage ON garage_id = Garage.id"
				+ " WHERE CONVERT(date, departure_time) = '" + departure_time + "' and departure = N'" + departute + "' and destination = N'" + destination + "' and Garage.deleted = 0";
		PreparedStatement pre = null;
		
		try {
			pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				Trip trip = new Trip();
				trip.setId(res.getInt("id"));
				trip.setDeparture(res.getString("departure"));
				trip.setDestination(res.getString("destination"));
				trip.setDeparture_time(res.getString("departure_time"));
				trip.setPrice(res.getInt("price"));
				trip.setNum_seat(res.getInt("num_seat"));
				trip.setTrip_board(res.getString("trip_board"));
				trip.garage.setId(res.getInt("garage_id"));
				trip.garage.setAddress(res.getString("address"));
				trip.garage.setFullname(res.getString("fullname"));
				trip.garage.setDescription(res.getString("description"));
				list_trip.add(trip);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return list_trip;
	}

}
