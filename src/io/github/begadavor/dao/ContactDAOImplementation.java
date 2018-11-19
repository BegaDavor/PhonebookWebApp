package io.github.begadavor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import io.github.begadavor.database.ConnectionManager;
import io.github.begadavor.model.Contact;


public class ContactDAOImplementation implements ContactDAOInterface {

	Connection connection = ConnectionManager.getInstance().getConnection();

	@Override
	public ArrayList<Contact> getContacts(int userID) throws SQLException {
		// TODO Auto-generated method stub
		ArrayList<Contact> contacts = new ArrayList<>();

		String query = "SELECT * FROM contactsDB WHERE userID = ?";
		ResultSet rs = null;

		try (PreparedStatement statement = connection.prepareStatement(query);) {
			statement.setInt(1, userID);

			rs = statement.executeQuery();

			while (rs.next()) {
				contacts.add(new Contact(rs.getInt("contactID"), rs.getString("firstName"), rs.getString("lastName"),
						rs.getString("city"), rs.getString("email"), rs.getString("phoneNumber"), rs.getInt("userID")));
			}

		}
		return contacts;
	}

	@Override
	public void addContact(Contact contact, int userID) throws SQLException {
		// TODO Auto-generated method stub
		String query = "insert into contactsDB(firstName, lastName, city, email, phoneNumber, userID) values (?, ?, ?, ?, ?, ?)";

		try (PreparedStatement statement = connection.prepareStatement(query);) {
			statement.setString(1, contact.getFirstName());
			statement.setString(2, contact.getLastName());
			statement.setString(3, contact.getCity());
			statement.setString(4, contact.getEmail());
			statement.setString(5, contact.getPhoneNumber());
			statement.setInt(6, userID);

			statement.executeUpdate();
		}

	}

	@Override
	public void updateContact(int contactID, int userID) throws SQLException {
		// TODO Auto-generated method stub
		Contact contact = getContactByID(contactID, userID);
		
		if (contact != null) {
			String query = "UPDATE contactsDB SET firstName = ?, lastName = ?, city = ?, email = ?, phoneNumber = ? WHERE contactID = ? AND userID = ?";

			try (PreparedStatement statement = connection.prepareStatement(query);) {
				statement.setString(1, contact.getFirstName());
				statement.setString(2, contact.getLastName());
				statement.setString(3, contact.getCity());
				statement.setString(4, contact.getEmail());
				statement.setString(5, contact.getPhoneNumber());
				statement.setInt(6, contact.getContactID());
				statement.setInt(7, userID);

				statement.executeUpdate();
			}
		}
	}

	@Override
	public void deleteContact(int contactID, int userID) throws SQLException {
		// TODO Auto-generated method stub
		String query = "DELETE FROM contactsDB WHERE contactID = ? AND userID = ?";
		
		try(PreparedStatement statement = connection.prepareStatement(query);){
			statement.setInt(1, contactID);
			statement.setInt(2, userID);
			
			statement.executeUpdate();
			
		}

	}

	@Override
	public Contact getContactByID(int contactID, int userID) throws SQLException {
		// TODO Auto-generated method stub
		
		String query = "SELECT * FROM contactsDB WHERE contactID = ? AND userID = ?";
		Contact contact = null;
		
		try(PreparedStatement statement = connection.prepareStatement(query);){
			statement.setInt(1, contactID);
			statement.setInt(2, userID);
			
			ResultSet rs = statement.executeQuery();
			
			if(rs.next()) {
				contact = new Contact(rs.getInt("contactID"),rs.getString("firstName"), rs.getString("lastName"), rs.getString("city"), rs.getString("email"), rs.getString("phoneNumber"), rs.getInt("userID"));
			}
		}
		
		return contact;
		
	}

}
