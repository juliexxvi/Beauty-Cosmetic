package entity;

public class OrderDetails {
	int id;
	int productId;
	int orderId;
	int quantity;
	float unitPrice;
	float discountRate;
	
	public OrderDetails(int id, int productId, int orderId, int quantity, float unitPrice, float discountRate) {
		super();
		this.id = id;
		this.productId = productId;
		this.orderId = orderId;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.discountRate = discountRate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public float getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(float discountRate) {
		this.discountRate = discountRate;
	}
	
	
}
