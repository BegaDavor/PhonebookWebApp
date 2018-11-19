package io.github.begadavor.model;

public class Contact {
	
	//atributi
	private int contactID;
	private String firstName;
	private String lastName;
	private String city;
	private String email;
	private String phoneNumber;
	private int userID;
	
	//constructor
	
	public Contact(int contactID, String firstName, String lastName, String city, String email, String phoneNumber, int userID) {
		this.contactID = contactID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.city = city;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.userID = userID;
	}
	
	public Contact(String firstName, String lastName, String city, String email, String phoneNumber) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.city = city;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}
	
	//getters & setters
	public int getContactID() {
		return contactID;
	}
	public void setContactID(int contactID) {
		this.contactID = contactID;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
}
