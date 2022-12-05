package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Admin;
import model.Manager;

public class ManagerDAO {
	public static Manager findManager(Connection connection,String phoneManager,String passManager) throws SQLException{
		String sql = "Select * from Manager " //
				+ " where phone_number = ? and password= ?";
		PreparedStatement pstm = connection.prepareStatement(sql);
		pstm.setString(1, phoneManager);
		pstm.setString(2, passManager);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			Manager manager = new Manager();
			manager.setPhoneManager(phoneManager);
			manager.setPassManager(passManager);
			return manager;
		}
		return null;
	}
}
