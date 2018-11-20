package io.github.begadavor.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import io.github.begadavor.model.Contact;

public interface ContactDAOInterface {
	
	public ArrayList<Contact> getContacts(int userID) throws SQLException;
	public void addContact(Contact contact, int userID) throws SQLException;
	public void updateContact(Contact contact, int userID) throws SQLException;
	public void deleteContact(int contactID, int userID) throws SQLException;
	public Contact getContactByID(int contactID, int userID) throws SQLException;

}
