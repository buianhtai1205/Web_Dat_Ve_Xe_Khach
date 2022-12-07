package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Customer;
import model.Ticket;

public class TicketDAO {
	
	public static List<Ticket> getlistTicket(Connection conn)
			throws SQLException {
			String sql = "Select tk.trip_id,c.fullname,c.phone_number,sc.musty,s.number_chair,t.price From Ticket tk, Trip t, Seat s, Customer c, Schedule sc Where tk.trip_id=t.id and tk.seat_id=s.id and tk.schedule_id=sc.id and tk.customer_id=c.id";
			
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			ResultSet rs = pstm.executeQuery();
			List<Ticket> list = new ArrayList<Ticket>();
			while (rs.next()) {
				int id = rs.getInt("trip_id");
				String ten = rs.getString("fullname");
				String phone = rs.getString("phone_number");
				String musty = rs.getString("musty");
				String numberchair = rs.getString("number_chair");
				int price = rs.getInt("price");
			
				Ticket mh = new Ticket();
				mh.setTripid(id);
				mh.setFullname(ten);
				mh.setPhonenumber(phone);
				mh.setMusty(musty);
				mh.setNumberchair(numberchair);
				mh.setPrice(price);
				list.add(mh);
			}
			
			return list;
		}
	public static List<Ticket> findTicket(Connection conn, String phonenumber) throws SQLException {
        String sql = "Select tk.trip_id,c.fullname,c.phone_number,sc.musty,s.number_chair,t.price From Ticket tk, Trip t, Seat s, Customer c, Schedule sc Where tk.trip_id=t.id and tk.seat_id=s.id and tk.schedule_id=sc.id and tk.customer_id=c.id and c.phone_number=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        
        pstm.setString(1, phonenumber);
        
        ResultSet rs = pstm.executeQuery();
        List<Ticket> list = new ArrayList<Ticket>();
        while (rs.next()) {
        	
        	int id = rs.getInt("trip_id");
			String ten = rs.getString("fullname");
			String phone = rs.getString("phone_number");
			String musty = rs.getString("musty");
			String numberchair = rs.getString("number_chair");
			int price = rs.getInt("price");
			
			Ticket mh = new Ticket();
			mh.setTripid(id);
			mh.setFullname(ten);
			mh.setPhonenumber(phone);
			mh.setMusty(musty);
			mh.setNumberchair(numberchair);
			mh.setPrice(price);
			list.add(mh);
        }
        return list;
    }

}
