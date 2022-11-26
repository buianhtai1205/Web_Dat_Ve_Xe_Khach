package DAO;

import java.sql.Connection;
import java.util.Date;
import java.util.List;




public interface ChuyenDAO{
	/**
	 * 
	 * @param id
	 * @return: 
	 */

	public void addChuyen(Connection con, int idChuyen, int idGhe, int idKhahcHang);
	public void addKhachHang(Connection conn,String fullname, String phone_number, String email, String password);
}
