package com.product;

public class Product {

	private String productId;
	private String productName;
	private String productDescription;
	private String productPrice;
	private String productQuantity;
	private String productExpiryDate;
	private String productManufacturingDate;
	private String productImage;

	public Product(String productId, String productName, String productDescription, String productPrice,
			String productQuantity, String productExpiryDate, String productManufacturingDate, String productImage) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.productPrice = productPrice;
		this.productQuantity = productQuantity;
		this.productExpiryDate = productExpiryDate;
		this.productManufacturingDate = productManufacturingDate;
		this.productImage = productImage;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getProductExpiryDate() {
		return productExpiryDate;
	}

	public void setProductExpiryDate(String productExpiryDate) {
		this.productExpiryDate = productExpiryDate;
	}

	public String getProductManufacturingDate() {
		return productManufacturingDate;
	}

	public void setProductManufacturingDate(String productManufacturingDate) {
		this.productManufacturingDate = productManufacturingDate;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
}
