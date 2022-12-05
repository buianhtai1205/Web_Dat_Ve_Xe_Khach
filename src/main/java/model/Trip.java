package model;

public class Trip {
	private int idTrip;
	private String departure;
	private String destination;
	private String departure_time;
	private int price;
	private int num_seat;
	private String trip_board;
	private int garage_id;

	public String getTrip_board() {
		return trip_board;
	}

	public void setTrip_board(String trip_board) {
		this.trip_board = trip_board;
	}

	public int getNum_seat() {
		return num_seat;
	}

	public void setNum_seat(int num_seat) {
		this.num_seat = num_seat;
	}

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

	public int getIdTrip() {
		return idTrip;
	}

	public void setIdTrip(int idTrip) {
		this.idTrip = idTrip;
	}

}
