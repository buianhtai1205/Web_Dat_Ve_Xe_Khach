package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Customer;
import model.Manager;

public class ManagerDAO {
<<<<<<< HEAD

	public static List<Manager> listManager(Connection conn) throws SQLException {
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

=======
	
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
				int idgara = rs.getInt("garage_id");
				Manager mh = new Manager();
				mh.setId(id);
				mh.setFullname(ten);
				mh.setPhone_number(phone);
				mh.setEmail(email);
				mh.setPassword(pass);
				mh.setGaraid(idgara);
				list.add(mh);
			}
			
			return list;
		}
public static List<Manager> findManager(Connection conn, String require) throws SQLException {
		
        String sql = "Select a.id, a.fullname, a.phone_number, a.email, a.password, a.garage_id from Manager a where a.fullname like '%"+require +"%' or a.phone_number like '%"
        		+ require +"%' or a.email like '%" + require + "%' or a.password like '%" + require + "%' or a.garage_id like '%" + require + "%'";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
       
        System.out.println(sql);
     
        ResultSet rs = pstm.executeQuery();
        List<Manager> list = new ArrayList<Manager>();
        while (rs.next()) {
        	
        	int id = rs.getInt("id");
			String ten = rs.getString("fullname");
			String phone = rs.getString("phone_number");
			String email = rs.getString("email");
			String pass = rs.getString("password");
			int idgara = rs.getInt("garage_id");
			Manager mh = new Manager();
			mh.setId(id);
			mh.setFullname(ten);
			mh.setPhone_number(phone);
			mh.setEmail(email);
			mh.setPassword(pass);
			mh.setGaraid(idgara);
			list.add(mh);
        }
        return list;
    }
>>>>>>> 290eec1027a904a6578a97b312d2d33637ed2292
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
<<<<<<< HEAD

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
			Manager mh = new Manager(id, ten, phone, email, pass);

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

	public static void insertManager(Connection conn, String fullname, String phone_number, String email,
			String password, int garage_id) throws SQLException {
		String sql = "Insert into Manager values (?, ?, ?, ?, ?)";
		//
		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, fullname);
		pstm.setString(2, phone_number);
		pstm.setString(3, email);
		pstm.setString(4, password);
		pstm.setInt(5, garage_id);
		pstm.executeUpdate();
	}
=======
		public static void deleteManager(Connection conn, int idIn) throws SQLException {
	        String sql = "Delete from Manager where id=?";
	        
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        pstm.setInt(1, idIn);  
	 
	        pstm.executeUpdate();
	    }
		public static Manager findManager(Connection conn, int idIn) throws SQLException {
			   String sql = "Select a.id, a.fullname, a.phone_number, a.email, a.password, a.garage_id from Manager a where a.id=? ";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	        
	        pstm.setInt(1, idIn);
	        
	        ResultSet rs = pstm.executeQuery();
	 
	        while (rs.next()) {
	        	int id = rs.getInt("id");
	        	String ten = rs.getString("fullname");
				String phone = rs.getString("phone_number");
				String email = rs.getString("email");
				String pass = rs.getString("password");
				int idgara = rs.getInt("idgara");
	            Manager mh = new Manager(id,ten,phone,email,pass,idgara);
	           
	            return mh;
	        }
	        return null;
	    }
		public static void updateManager(Connection conn, Manager mh) throws SQLException {
	        String sql = "Update Manager set fullname=?, phone_number=?, email=?, password=?, garage_id=? where id=? ";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        pstm.setString(1, mh.getFullname());
	        pstm.setString(2, mh.getPhone_number());
	        pstm.setString(3, mh.getEmail());
	        pstm.setString(4, mh.getPassword());
	        pstm.setInt(5, mh.getGaraid());
	        pstm.setInt(6, mh.getId());
	       
	        pstm.executeUpdate();
	    }
		public static void insertManager(Connection conn, Manager mh) throws SQLException {
	        String sql = "Insert into Manager values (?, ?, ?, ?, ?)";
	 //
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        pstm.setString(1, mh.getFullname());
	        pstm.setString(2, mh.getPhone_number());
	        pstm.setString(3, mh.getEmail());
	        pstm.setString(4, mh.getPassword());
	        pstm.setInt(5, mh.getGaraid());
	        pstm.executeUpdate();
	    }
>>>>>>> 290eec1027a904a6578a97b312d2d33637ed2292
}
