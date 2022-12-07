package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Customer;

public class CustomerDAO {

	public CustomerDAO() {
		// TODO Auto-generated constructor stub
	}

	public static Customer findUser(Connection conn, String numberPhone, String password) throws SQLException {

		String sql = "Select * from Customer " //
				+ " where phone_number = ? and password= ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, numberPhone);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String userName = rs.getString("fullname");
			String email = rs.getString("email");
			Customer user = new Customer();
			user.setEmail(email);
			user.setFullname(userName);
			user.setPassword(password);
			user.setPhone_number(numberPhone);
			return user;
		}
		return null;
	}

	public static Customer findUser(Connection conn, String phone_number) throws SQLException {

		String sql = "Select * from Customer a "//
				+ " where a.phone_number = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, phone_number);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			Customer user = new Customer();
			int id = rs.getInt("id");
			String userName = rs.getString("fullname");
			String email = rs.getString("email");
			user.setId(id);
			user.setEmail(email);
			user.setFullname(userName);

			return user;
		}
		return null;
	}

	public static void updatePassword(Connection conn, String password, String numberPhone) throws SQLException {
		String sql = "Update Customer set password =? where phone_number=? ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, password);
		pstm.setString(2, numberPhone);
		pstm.executeUpdate();
	}

}
