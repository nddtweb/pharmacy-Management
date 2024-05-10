package com.Users;

public class Users {
	private int id;
    private String name;
    private String address;
    private String email;
    private String phone;
    private String gender;
    private String age;
    private String username;
    private String password;
    private int usertype;
    
    
	public Users(int id, String name, String address, String email, String phone, String gender, String age,
			String username, String password, int usertype) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.age = age;
		this.username = username;
		this.password = password;
		this.usertype = usertype;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String Password) {
		this.password = Password;
	}
	
	public int getusertype() {
		return usertype;
	}

	public void setusertype(int usertype) {
		this.usertype = usertype;
	}
    

}
