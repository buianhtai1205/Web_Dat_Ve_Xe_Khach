package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Garage;

public class GarageDAO {

	public GarageDAO() {
		// TODO Auto-generated constructor stub
	}

	public Garage getGarage(Connection con, String idGarage) {

		String sql1 = "SELECT fullname,description FROM Garage WHERE id = " + idGarage;
		Garage xe = new Garage();
		PreparedStatement pre = null;
		ResultSet res;
		try {
			pre = con.prepareStatement(sql1);
			res = pre.executeQuery();
			while (res.next()) {
				String fullname = res.getString("fullname");
				String description = res.getString("description");
				xe.setFullname(fullname);
				xe.setDescription(description);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

		}
		return xe;
	}

//	public Garage findGArageId(Connection conn,String userManager) throws SQLException{
//		String garage_id = "select garage_id from Manager where phone_number = "
//				+ userManager;
//		PreparedStatement pre = null;
//		
//		try {
//			pre = conn.prepareStatement(sql);
//			pre.set
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//	}
}
