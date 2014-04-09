package com.crisp.mvrc.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO extends BaseDAO {

	public LoginDAO(){
		super();
		// TODO Auto-generated constructor stub
	}

	
	public boolean authenticateUser(String username, String password)
	{
		boolean success = true;
		
		PreparedStatement stmt = null;
	
			String query = "select * from user_account where username = ? and password = ?";
		
			try {
				
				stmt = dbConnection.prepareStatement(query);
				
				stmt.setString(1, username);
				stmt.setString(2, password);
			
				
				ResultSet result = stmt.executeQuery(query);
				
				if(result.next())
				
					success = true;
				else
					success = false;
					
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				success = false;
				e.printStackTrace();
			}
		
			
		return success;
	}
	
	
	
}
