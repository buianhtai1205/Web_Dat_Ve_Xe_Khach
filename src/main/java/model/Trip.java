package model;

public class Trip{
	private String departure;
	private String destination;
	private String departure_time;
	private int price;
	private int garage_id;
	
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(String departure_time) {
		this.departure_time = departure_time;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getGarage_id() {
		return garage_id;
	}
	public void setGarage_id(int garage_id) {
		this.garage_id = garage_id;
	}
	
}
