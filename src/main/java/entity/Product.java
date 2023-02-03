package entity;

public class Product {
	int id;
	String name;
	String imageUrl;
	String packageSize;
	String description;
	float unitPrice;
	int brandId;
	String lotNumber;
	int categoryId;
	
	
	public Product(String name, String imageUrl, String packageSize, String description, float unitPrice,
			int brandId, String lotNumber, int categoryId) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
		this.packageSize = packageSize;
		this.description = description;
		this.unitPrice = unitPrice;
		this.brandId = brandId;
		this.lotNumber = lotNumber;
		this.categoryId = categoryId;
	}

	public Product(int id, String name, String imageUrl, String packageSize, String description, float unitPrice,
			int brandId, String lotNumber, int categoryId) {
		super();
		this.id = id;
		this.name = name;
		this.imageUrl = imageUrl;
		this.packageSize = packageSize;
		this.description = description;
		this.unitPrice = unitPrice;
		this.brandId = brandId;
		this.lotNumber = lotNumber;
		this.categoryId = categoryId;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getPackageSize() {
		return packageSize;
	}
	public void setPackageSize(String packageSize) {
		this.packageSize = packageSize;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getLotNumber() {
		return lotNumber;
	}
	public void setLotNumber(String lotNumber) {
		this.lotNumber = lotNumber;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}



	

}
