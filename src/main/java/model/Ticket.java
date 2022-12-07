package model;

public class Ticket{
	private int tripid;
	private String fullname;
	private String phonenumber;
	private String musty;
	private String numberchair;
	private int price;
	public Ticket() {}
	public Ticket (int id, String name, String phone, String musty, String chair, int price)
	{
		super();
		this.setTripid(id);
		this.setFullname(name);
		this.setPhonenumber(phone);
		this.setMusty(musty);
		this.setNumberchair(chair);
		this.setPrice(price);
	}
	public int getTripid() {
		return tripid;
	}
	public void setTripid(int tripid) {
		this.tripid = tripid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getMusty() {
		return musty;
	}
	public void setMusty(String musty) {
		this.musty = musty;
	}
	public String getNumberchair() {
		return numberchair;
	}
	public void setNumberchair(String numberchair) {
		this.numberchair = numberchair;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}