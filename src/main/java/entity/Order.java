package entity;

public class Order {
	int id;
	float totalAmount;
	String customerName;
	String customerAddress;
	String customerContact;
	
	public Order(int id, float totalAmount, String customerName, String customerAddress, String customerContact) {
		super();
		this.id = id;
		this.totalAmount = totalAmount;
		this.customerName = customerName;
		this.customerAddress = customerAddress;
		this.customerContact = customerContact;
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
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getCustomerContact() {
		return customerContact;
	}
	public void setCustomerContact(String customerContact) {
		this.customerContact = customerContact;
	}
	
	
	
	
}
