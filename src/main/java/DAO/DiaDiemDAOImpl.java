package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import java.util.List;



import model.DiaDiem;


public class DiaDiemDAOImpl implements DiaDiemDAO {

	@Override
	public DiaDiem getDiaDiem(long id) {
		DiaDiem diadiem = null;
		Connection con = null;
		String sql1 = "SELECT tendiadiem FROM diadiem  WHERE iddiadiem=?";
		PreparedStatement pre = null;
		ResultSet res;
		try {
			pre = con.prepareStatement(sql1);
			pre.setLong(1, id);
			res = pre.executeQuery();
			while (res.next()) {
				diadiem = new DiaDiem(id, res.getString("tendiadiem"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
		}

		return diadiem;
	}

	@Override
	public List<DiaDiem> getAllDiaDiem() {
		List<DiaDiem> listDiaDiem = new ArrayList<>();

		String sql = "SELECT diadiem.iddiadiem,diadiem.tendiadiem FROM diadiem";
		PreparedStatement pre = null;
		try {
			//pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while (res.next()) {
				listDiaDiem.add(new DiaDiem(res.getLong("iddiadiem"), res
						.getString("tendiadiem")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

		}
		return listDiaDiem;
	}
}
