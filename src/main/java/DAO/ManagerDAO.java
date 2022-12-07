package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Manager;

public class ManagerDAO {
	
	public static List<Manager> listManager(Connection conn)
			throws SQLException {
			String sql = "SELECT * FROM Manager";
			
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			ResultSet rs = pstm.executeQuery();
			List<Manager> list = new ArrayList<Manager>();
			while (rs.next()) {
				int id = rs.getInt("id");
				String ten = rs.getString("fullname");
				String phone = rs.getString("phone_number");
				String email = rs.getString("email");
				String pass = rs.getString("password");
				Manager mh = new Manager();
				mh.setId(id);
				mh.setFullname(ten);
				mh.setPhone_number(phone);
				mh.setEmail(email);
				mh.setPassword(pass);
				list.add(mh);
			}
			
			return list;
		}
	public static Manager findManager(Connection connection, String phoneManager, String passManager)
			throws SQLException {
		String sql = "Select * from Manager " //
				+ " where phone_number = ? and password= ?";
		PreparedStatement pstm = connection.prepareStatement(sql);
		pstm.setString(1, phoneManager);
		pstm.setString(2, passManager);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			Manager manager = new Manager();
			manager.setPhone_number(phoneManager);
			manager.setPassword(passManager);
			return manager;
		}
		return null;
	}
		public static void deleteManager(Connection conn, int idIn) throws SQLException {
	        String sql = "Delete from Manager where id=?";
	        
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        pstm.setInt(1, idIn);  
	 
	        pstm.executeUpdate();
	    }
		public static Manager findManager(Connection conn, int idIn) throws SQLException {
			   String sql = "Select a.id, a.fullname, a.phone_number, a.email, a.password from Manager a where a.id=? ";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        
	        pstm.setInt(1, idIn);
	        
	        ResultSet rs = pstm.executeQuery();
	 
	        while (rs.next()) {
	        	int id = rs.getInt("id");
	        	String ten = rs.getString("fullname");
				String phone = rs.getString("phone_number");
				String email = rs.getString("email");
				String pass = rs.getString("password");
	            Manager mh = new Manager(id,ten,phone,email,pass);
	           
	            return mh;
	        }
	        return null;
	    }
		public static void updateManager(Connection conn, Manager mh) throws SQLException {
	        String sql = "Update Manager set fullname=?, phone_number=?, email=?, password=? where id=? ";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        pstm.setString(1, mh.getFullname());
	        pstm.setString(2, mh.getPhone_number());
	        pstm.setString(3, mh.getEmail());
	        pstm.setString(4, mh.getPassword());
	        pstm.setInt(5, mh.getId());
	        pstm.executeUpdate();
	    }
		public static void insertManager(Connection conn, Manager mh) throws SQLException {
	        String sql = "Insert into Manager values (?, ?, ?, ?, null)";
	 //
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        pstm.setString(1, mh.getFullname());
	        pstm.setString(2, mh.getPhone_number());
	        pstm.setString(3, mh.getEmail());
	        pstm.setString(4, mh.getPassword());
	        
	        pstm.executeUpdate();
	    }
}
