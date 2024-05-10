package com.cart;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.Users.Users;
import com.model.DBConnect;

public class CartDBUtil {

	public static List<Cart> getAllCartItems(int uId) {
		List<Cart> cartItems = new ArrayList<>();

		try {
			String sql = "SELECT cart.*, product.productName " + "FROM cart  "
					+ "INNER JOIN product ON cart.productId = product.productId " + "WHERE cart.`userId` = '"
					+ String.valueOf(uId) + "' AND isProcessed = '0' ";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String cartId = rs.getString(1);
				String userId = rs.getString(2);
				String productId = rs.getString(8);
				Double quantity = rs.getDouble(4);
				Double rate = rs.getDouble(5);
				Double total = rs.getDouble(6);
				String isProcessed = rs.getString(7);

				Cart cartItem = new Cart(cartId, userId, productId, quantity, rate, total, isProcessed);
				cartItems.add(cartItem);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartItems;
	}

	public static Cart getCartItemDetail(String cartId) {
		Cart cartItem = null;
		try {
			String sql = "SELECT * FROM cart WHERE cartId='" + cartId + "'";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String userId = rs.getString(2);
				String productId = rs.getString(3);
				Double quantity = rs.getDouble(4);
				Double rate = rs.getDouble(5);
				Double total = rs.getDouble(6);
				String isProcessed = rs.getString(7);

				cartItem = new Cart(cartId, userId, productId, quantity, rate, total, isProcessed);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartItem;
	}

	public static Cart getCartItemDetailForPayment(String cartId) {
		Cart cartItem = null;
		try {
			String sql = "SELECT cart.* ,product.productName  FROM cart INNER JOIN product ON cart.productId = product.productId WHERE cartId='"
					+ cartId + "'";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String userId = rs.getString(2);
				String productId = rs.getString(8);// product name
				Double quantity = rs.getDouble(4);
				Double rate = rs.getDouble(5);
				Double total = rs.getDouble(6);
				String isProcessed = rs.getString(7);

				cartItem = new Cart(cartId, userId, productId, quantity, rate, total, isProcessed);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartItem;
	}

	public static boolean insertCartItem(String userId, String productId, double quantity, double rate, double total,
			String isProcessed) {
		boolean isSuccess = false;
		String sql = "INSERT INTO cart ( userId, productId, qty, rate, total, isProcessed) VALUES (  '" + userId
				+ "', '" + productId + "', '" + quantity + "', '" + rate + "', '" + total + "', '" + isProcessed + "')";
//		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		isSuccess = rs > 0;
		return isSuccess;
	}

	public static boolean updateCartItem(String cartId, double quantity, double rate, double total,
			String isProcessed) {
		boolean isSuccess = false;
		String sql = "UPDATE cart SET qty = '" + quantity + "', rate = '" + rate + "', total = '" + total
				+ "', isProcessed = '" + isProcessed + "' WHERE cartId = '" + cartId + "'";
//		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		isSuccess = rs > 0;
		return isSuccess;
	}

	public static boolean deleteCartItem(String cartId) {
		boolean isSuccess = false;
		String sql = "DELETE FROM cart WHERE cartId = '" + cartId + "'";
		int rs = DBConnect.iud(sql);

		isSuccess = rs > 0;
		return isSuccess;
	}
	
	public static boolean updateCartStatus(String cartId) {
		boolean isSuccess = false;
		String sql = "UPDATE cart SET isProcessed = '1' WHERE cartId = '" + cartId + "'";
//		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		isSuccess = rs > 0;
		return isSuccess;
	}

}
