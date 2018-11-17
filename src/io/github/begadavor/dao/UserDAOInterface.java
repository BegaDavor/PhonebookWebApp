package io.github.begadavor.dao;

import java.sql.SQLException;

import io.github.begadavor.model.User;

public interface UserDAOInterface {
	
	public void addUser(String firstname, String lastname, String email, String username, String password) throws SQLException;
	public User findUserByUsernameAndPassword(String username, String password) throws SQLException;
	public boolean findByLogin(String username, String password) throws SQLException;
	public boolean findUserByUsername(String username);

}
