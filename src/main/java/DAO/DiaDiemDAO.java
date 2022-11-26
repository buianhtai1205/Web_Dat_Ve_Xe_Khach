package DAO;

import java.util.List;


import model.DiaDiem;


public interface DiaDiemDAO {
	public DiaDiem getDiaDiem(long id);
	public List<DiaDiem> getAllDiaDiem();

}
