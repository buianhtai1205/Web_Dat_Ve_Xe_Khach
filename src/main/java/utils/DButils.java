package utils;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;

import model.Customer;

public class DButils {

	public DButils() {
		// TODO Auto-generated constructor stub
	}
	
	public static Customer findUser(Connection conn, String numberPhone, String password) 
			throws SQLException 
	{

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
			int id = rs.getInt("id");
			Customer user = new Customer();
			user.setId(id);
			return user;
		}
		return null;
	}

	
//	public static List<Subject> queryProduct(Connection conn) 
//			throws SQLException {
//		String sql = "Select s.idSubject, s.name, s.price from Subjects s ";
//
//		PreparedStatement pstm = conn.prepareStatement(sql);
//
//		ResultSet rs = pstm.executeQuery();
//		List<Subject> list = new ArrayList<>();
//		while (rs.next()) {
//			String id_subject = rs.getString("idSubject");
//			String name = rs.getString("name");
//			float price = rs.getFloat("price");
//			Subject subject = new Subject();
//			subject.setIdSubject(id_subject);
//			subject.setName(name);
//			subject.setPrice(price);
//			list.add(subject);
//		}
//		
//		return list;
//	}
//
//	public static Subject findProduct(Connection conn, String id_subject) throws SQLException {
//		String sql = "Select s.idSubject, s.name, s.price from Subjects s where s.idSubject=?";
//
//		PreparedStatement pstm = conn.prepareStatement(sql);
//		pstm.setString(1, id_subject);
//
//		ResultSet rs = pstm.executeQuery();
//
//		while (rs.next()) {
//			String name = rs.getString("name");
//			float price = rs.getFloat("price");
//			Subject product = new Subject(id_subject, name, price);
//			return product;
//		}
//		return null;
//	}
//
//	public static void updateProduct(Connection conn, Subject product) throws SQLException {
//		String sql = "Update Subjects set name =?, price=? where idSubject=? ";
//
//		PreparedStatement pstm = conn.prepareStatement(sql);
//
//		pstm.setString(1, product.getName());
//		pstm.setFloat(2, product.getPrice());
//		pstm.setString(3, product.getIdSubject());
//		pstm.executeUpdate();
//	}
//
//	public static void insertProduct(Connection conn, Subject product) throws SQLException {
//		String sql = "Insert into Subjects(idSubject, name,price) values (?,?,?)";
//
//		PreparedStatement pstm = conn.prepareStatement(sql);
//
//		pstm.setString(1, product.getIdSubject());
//		pstm.setString(2, product.getName());
//		pstm.setFloat(3, product.getPrice());
//
//		pstm.executeUpdate();
//	}
//
//	public static void deleteProduct(Connection conn, String id_subjects) throws SQLException {
//		String sql = "Delete from Subjects where idSubject= ?";
//
//		PreparedStatement pstm = conn.prepareStatement(sql);
//
//		pstm.setString(1, id_subjects);
//
//		pstm.executeUpdate();
//	}

}
