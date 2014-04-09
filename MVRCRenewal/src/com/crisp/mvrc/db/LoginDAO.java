package com.crisp.mvrc.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.crisp.mvrc.dto.UserAccountDTO;

public class LoginDAO extends BaseDAO {

	public LoginDAO(){
		super();
		// TODO Auto-generated constructor stub
	}

	
	public UserAccountDTO authenticateUser(String username, String password)
	{
		boolean success = true;
		UserAccountDTO user = null;
		PreparedStatement stmt = null;
	
		String query = "select * from user_account where username = ? and password = ?";
		
			try {
				
				stmt = dbConnection.prepareStatement(query);
				
				stmt.setString(1, username);
				stmt.setString(2, password);
			
				
				ResultSet result = stmt.executeQuery(query);
				
				if(result.next())
				{	
					user = new UserAccountDTO();
					success = true;
					user.setAccountNo(result.getInt("account_no"));
					user.setUserName(result.getString("username"));
					user.setPassword(result.getString("password"));
				}
				else{
					success = false;
					user = null;
				}
					
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				success = false;
				e.printStackTrace();
			}
		
			
		return user;
	}
	
	
	
}
