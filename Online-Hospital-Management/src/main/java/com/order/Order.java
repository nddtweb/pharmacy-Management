package com.order;

public class Order {

	private String orderId;
	private String cartId;
	private Double amount;
	private String paymentMethod;
	private String customerName;
	private String deliveryAddress;

	public Order(String orderId, String cartId, Double amount, String paymentMethod, String customerName,
			String deliveryAddress) {
		this.orderId = orderId;
		this.cartId = cartId;
		this.amount = amount;
		this.paymentMethod = paymentMethod;
		this.customerName = customerName;
		this.deliveryAddress = deliveryAddress;
	}

	// Getters and setters
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

}
