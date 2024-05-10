package com.order;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Users.Users;
import com.model.DBConnect;

public class OrderDBUtil {

	public static List<Order> getAllOrdersAdmin() {
		List<Order> orders = new ArrayList<>();

		try {
			String sql = "SELECT `order`.*,product.productName  FROM `order`  "
					+ "INNER JOIN cart ON `order`.cartId = cart.cartId "
					+ "INNER JOIN product ON cart.productId = product.productId ";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String orderId = rs.getString("orderId");
				String cartId = rs.getString("product.productName");
				double amount = rs.getDouble("amount");
				String paymentMethod = rs.getString("paymentMethod");
				String customerName = rs.getString("cus_name");
				String deliveryAddress = rs.getString("delivery_address");

				Order order = new Order(orderId, cartId, amount, paymentMethod, customerName, deliveryAddress);
				orders.add(order);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return orders;
	}

	public static List<Order> getAllOrders(int uId) {
		List<Order> orders = new ArrayList<>();

		try {
			String sql = "SELECT `order`.*,product.productName  FROM `order`  "
					+ "INNER JOIN cart ON `order`.cartId = cart.cartId "
					+ "INNER JOIN product ON cart.productId = product.productId " + "WHERE cart.userId  = '" + uId
					+ "'";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String orderId = rs.getString("orderId");
				String cartId = rs.getString("product.productName");
				double amount = rs.getDouble("amount");
				String paymentMethod = rs.getString("paymentMethod");
				String customerName = rs.getString("cus_name");
				String deliveryAddress = rs.getString("delivery_address");

				Order order = new Order(orderId, cartId, amount, paymentMethod, customerName, deliveryAddress);
				orders.add(order);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return orders;
	}

	public static Order getOrderDetails(String oId) {
		Order order = null;

		try {
			String sql = "SELECT `order`.*,product.productName  FROM `order`  "
					+ "INNER JOIN cart ON `order`.cartId = cart.cartId "
					+ "INNER JOIN product ON cart.productId = product.productId " + "WHERE `order`.orderId  = '" + oId
					+ "'";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String orderId = rs.getString("orderId");
				String cartId = rs.getString("product.productName");
				double amount = rs.getDouble("amount");
				String paymentMethod = rs.getString("paymentMethod");
				String customerName = rs.getString("cus_name");
				String deliveryAddress = rs.getString("delivery_address");

				order = new Order(orderId, cartId, amount, paymentMethod, customerName, deliveryAddress);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;
	}

	public static boolean insertOrder(String cartId, Double amount, String paymentMethod, String customerName,
			String deliveryAddress) {
		boolean isSuccess = false;

		String sql = "INSERT INTO `order` (cartId, amount, paymentMethod, cus_name, delivery_address) " + "VALUES ( '"
				+ cartId + "', '" + amount + "', '" + paymentMethod + "', '" + customerName + "', '" + deliveryAddress
				+ "')";
//		System.out.println(sql);
		int rowsAffected = DBConnect.iud(sql);

		if (rowsAffected > 0) {
			isSuccess = true;
		}

		return isSuccess;
	}

	public static boolean updateOrder(String orderId, String customerName, String deliveryAddress,
			String paymentMethod) {
		boolean isSuccess = false;

		String sql = "UPDATE `order` SET cus_name='" + customerName + "', delivery_address='" + deliveryAddress
				+ "', paymentMethod='" + paymentMethod + "' WHERE orderId='" + orderId + "'";
		System.out.println(sql);
		int rowsAffected = DBConnect.iud(sql);

		if (rowsAffected > 0) {
			isSuccess = true;
		}
		return isSuccess;
	}

	public static boolean deleteOrder(String orderId) {
		boolean isSuccess = false;
		String sql = "DELETE FROM `order` WHERE orderId='" + orderId + "'";
//		System.out.println(sql);
		int rowsAffected = DBConnect.iud(sql);

		if (rowsAffected > 0) {
			isSuccess = true;
		}

		return isSuccess;
	}
}
