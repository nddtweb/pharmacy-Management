package com.product;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Users.Users;
import com.model.DBConnect;

public class ProductDBUtil {

	public static boolean findProduct(String productname) {

		boolean isScucess = false;

		try {
			String sql = "select * from product where productName='" + productname + "'";
			ResultSet rs = DBConnect.search(sql);

			if (rs.next()) {
				isScucess = true;
			} else {
				isScucess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isScucess;

	}

	public static List<Product> getAllProduct() {
		ArrayList<Product> Product = new ArrayList<>();

		try {
			String sql = "select * from product ";
//			System.out.println(sql);
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String productId = rs.getString(1);
				String productName = rs.getString(2);
				String productDescription = rs.getString(3);
				String productPrice = rs.getString(4);
				String productQuantity = rs.getString(5);
				String productExpiryDate = rs.getString(6);
				String productManufacturingDate = rs.getString(7);
				String productImage = rs.getString(8);

				Product m = new Product(productId, productName, productDescription, productPrice, productQuantity,
						productExpiryDate, productManufacturingDate, productImage);
				Product.add(m);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return Product;
	}

	public static Product getProductDetail(String pId) {
//		ArrayList<Product> Product = new ArrayList<>();
		Product m = null;
		try {
			String sql = "select * from product where productId='" + pId + "'";
//			System.out.println(sql);
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				String productId = rs.getString(1);
				String productName = rs.getString(2);
				String productDescription = rs.getString(3);
				String productPrice = rs.getString(4);
				String productQuantity = rs.getString(5);
				String productExpiryDate = rs.getString(6);
				String productManufacturingDate = rs.getString(7);
				String productImage = rs.getString(8);

				m = new Product(productId, productName, productDescription, productPrice, productQuantity,
						productExpiryDate, productManufacturingDate, productImage);
//				Product.add(m);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;

	}

	public static boolean insertProduct(String productName, String productDescription, String productPrice,
			String productQuantity, String productExpiryDate, String productManufacturingDate, String productImage) {

		boolean isScucess = false;

		String sql = "insert into product(`productName`,`productDescription`,`productPrice`,`productQuantity`,`productExpiryDate`,`productManufacturingDate`,`image_url`) "
				+ "values ('" + productName + "','" + productDescription + "','" + productPrice + "','"
				+ productQuantity + "','" + productExpiryDate + "','" + productManufacturingDate + "','" + productImage
				+ "')";
//		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		if (rs > 0) {
			isScucess = true;
		} else {
			isScucess = false;
		}
		return isScucess;
	}

	public static boolean updateProduct(String productId, String productName, String productDescription,
			String productPrice, String productQuantity, String productExpiryDate, String productManufacturingDate,
			String productImage) {
		boolean isScucess = false;
		String sql = "update product set productName='" + productName + "'," + "productDescription='"
				+ productDescription + "',productPrice='" + productPrice + "',productQuantity='" + productQuantity
				+ "',productExpiryDate='" + productExpiryDate + "',productManufacturingDate='"
				+ productManufacturingDate + "' " + ",image_url='" + productImage + "' " + "where productId='"
				+ productId + "'";
//		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		if (rs > 0) {
			isScucess = true;
		} else {
			isScucess = false;
		}

		return isScucess;
	}

	public static boolean deleteProduct(String productID) {
		boolean isScucess = false;

		String sql = "delete from product where productId='" + productID + "'";
//		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		if (rs > 0) {
			isScucess = true;
		} else {
			isScucess = false;
		}

		return isScucess;

	}

}
