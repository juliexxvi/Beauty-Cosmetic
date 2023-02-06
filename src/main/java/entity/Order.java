package entity;

public class Order {
	int id; 
	float totalAmount;
	String firstName; 
	String lastName; 
	String username; 
	String emailAddress;
	String address;
	
	public Order(int id, float totalAmount, String firstName, String lastName, String username, String emailAddress,
			String address) {
		super();
		this.id = id;
		this.totalAmount = totalAmount;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.emailAddress = emailAddress;
		this.address = address;
	}
	
	public Order(float totalAmount, String firstName, String lastName, String username, String emailAddress,
			String address) {
		this.totalAmount = totalAmount;
		this.firstName = firstName;
		this.lastName = lastName;
		this.username = username;
		this.emailAddress = emailAddress;
		this.address = address;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
}
