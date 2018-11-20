package io.github.begadavor.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import io.github.begadavor.database.ConnectionManager;
import io.github.begadavor.model.User;

public class UserDAOImplementation implements UserDAOInterface{
	
	Connection connection = ConnectionManager.getInstance().getConnection();
	
	public UserDAOImplementation() {
	}

	@Override
	public void addUser(String firstname, String lastname, String email, String username, String password) throws SQLException {
		// TODO Auto-generated method stub
		String query = "insert into usersDB(firstname, lastname, email, username, password) values (?, ?, ?, ?, ?)";
		
		try(PreparedStatement statement = connection.prepareStatement(query);){
			statement.setString(1, firstname);
			statement.setString(2, lastname);
			statement.setString(3, email);
			statement.setString(4, username);
			statement.setString(5, password);
			
			statement.executeUpdate();
		}
		
		
	}

	@Override
	public User findUserByUsernameAndPassword(String username, String password) throws SQLException {
		// TODO Auto-generated method stub
		User user = null;
		
		String query = "select * from usersDB where username = ? and password = ?";
		
		try(PreparedStatement statement = connection.prepareStatement(query);){
			statement.setString(1, username);
			statement.setString(2, password);
			
			ResultSet rs = statement.executeQuery();
			 if(rs != null) {
				 while(rs.next()) {
					 user = new User();
					 user.setUserID(rs.getInt("userID"));
					 user.setFirstname(rs.getString("firstname"));
					 user.setLastname(rs.getString("lastname"));
					 user.setEmail(rs.getString("email"));
					 user.setUsername(rs.getString("username"));
					 user.setPassword(rs.getString("password"));
				 }
			 }
		}
		return user;
	}

	@Override
	public boolean findByLogin(String username, String password) throws SQLException {
		// TODO Auto-generated method stub
		String query = "select password from usersDB where username = ?";
		try(PreparedStatement statement = connection.prepareStatement(query);){
			statement.setString(1, username);
			ResultSet rs = statement.executeQuery();
			if(rs != null) {
				while(rs.next()) {
					if(rs.getString("password").equals(password))
						return true;
				}
			}else if(rs == null || password.equals(null) || password.equals("") || username.equals(null) || username.equals("") ) {
				return false;
			}
		}
		
		return false;
	}

	@Override
	public boolean findUserByUsername(String username) {
		// TODO Auto-generated method stub
		try {
			PreparedStatement prepStatement = connection.prepareStatement("select count(*) from usersDB where username = ?");
			prepStatement.setString(1, username);	
						
			ResultSet rs = prepStatement.executeQuery();
			if (rs != null) {	
				while (rs.next()) {
					if (rs.getInt(1) == 1) {
						return true;
					}				
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	

}
