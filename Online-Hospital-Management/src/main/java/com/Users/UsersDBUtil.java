package com.Users;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.DBConnect;

public class UsersDBUtil {

	public static boolean validate(String username, String password) {
		boolean isScucess = false;

		try {
			String sql = "select * from users where username='" + username + "' and password='" + password + "'";
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

	public static List<Users> getAllUsers() {
		ArrayList<Users> user = new ArrayList<>();

		try {
			String sql = "select * from users";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String age = rs.getString(7);
				String usernameU = rs.getString(8);
				String passwordU = rs.getString(9);
				int usertype = rs.getInt(10);

				Users u = new Users(id, name, address, email, phone, gender, age, usernameU, passwordU, usertype);
				user.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public static Users getUser(String userId) {
//		ArrayList<Users> user = new ArrayList<>();
		Users u = null;
		try {
			String sql = "select * from users where id='" + userId + "'";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String age = rs.getString(7);
				String usernameU = rs.getString(8);
				String passwordU = rs.getString(9);
				int usertype = rs.getInt(10);

				 u = new Users(id, name, address, email, phone, gender, age, usernameU, passwordU, usertype);
//				user.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public static List<Users> getUsersDetails(String un) {

		ArrayList<Users> user = new ArrayList<>();

		try {
			String sql = "select * from users where username='" + un + "'";
			ResultSet rs = DBConnect.search(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String age = rs.getString(7);
				String username = rs.getString(8);
				String password = rs.getString(9);
				int usertype = rs.getInt(10);

				Users u = new Users(id, name, address, email, phone, gender, age, username, password, usertype);
				user.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public static boolean InsertUsers(String name, String address, String email, String phone, String gender,
			String age, String username, String password, String usertype) {

		boolean isScucess = false;

		String sql = "insert into users values (0,'" + name + "','" + address + "','" + email + "','" + phone + "','"
				+ gender + "','" + age + "','" + username + "','" + password + "','" + usertype + "')";
		System.out.println(sql);
		int rs = DBConnect.iud(sql);
		System.out.println(rs);
		if (rs > 0) {
			isScucess = true;
		} else {
			isScucess = false;
		}
		return isScucess;
	}

	public static boolean updateUser(String id, String name, String address, String email, String phone, String gender,
			String age, String username, String password) {
		boolean isScucess = false;
		String sql = "update users set name='" + name + "', address='" + address + "', email='" + email + "', phone='"
				+ phone + "', gender='" + gender + "', age='" + age + "', username='" + username + "', password='"
				+ password + "' " + "where id='" + id + "'";
		System.out.println(sql);
		int rs = DBConnect.iud(sql);

		if (rs > 0) {
			isScucess = true;
		} else {
			isScucess = false;
		}
		return isScucess;
	}

	public static boolean deleteUser(String id) {
		int convID = Integer.parseInt(id);

		boolean isScucess = false;

		String sql = "delete from users where id='" + convID + "'";
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
