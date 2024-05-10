package com.cart;

public class Cart {

	private String cartId;
	private String userId;
	private String productId;
	private Double quantity;
	private Double rate;
	private Double total;
	private String isProcessed;

	public Cart(String cartId, String userId, String productId, Double quantity, Double rate, Double total,
			String isProcessed) {
		this.cartId = cartId;
		this.userId = userId;
		this.productId = productId;
		this.quantity = quantity;
		this.rate = rate;
		this.total = total;
		this.isProcessed = isProcessed;
	}

	// Getters and setters
	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Double getQuantity() {
		return quantity;
	}

	public void setQuantity(Double quantity) {
		this.quantity = quantity;
	}

	public Double getRate() {
		return rate;
	}

	public void setRate(Double rate) {
		this.rate = rate;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public String getIsProcessed() {
		return isProcessed;
	}

	public void setIsProcessed(String isProcessed) {
		this.isProcessed = isProcessed;
	}

}
