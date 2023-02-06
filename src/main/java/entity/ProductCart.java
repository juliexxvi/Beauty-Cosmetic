package entity;

public class ProductCart {
	int quantity;
	Product product;
	
	
	public ProductCart(int quantity, Product product) {
		super();
		this.quantity = quantity;
		this.product = product;
	}
	
	public void incrementQuantity() {
		this.quantity++;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
