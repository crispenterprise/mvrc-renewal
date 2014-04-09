package com.crisp.mvrc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class BaseDAO {

	protected Connection dbConnection;
	
	/*String host = "localhost";
	String port = "3306";
	String database = "genaudit";
	
	String username = "root";
	String password = "";*/
	
	public BaseDAO(){
		
		try {   
			
			System.out.println("Establishing database connection...");
			
            Class.forName("com.mysql.jdbc.Driver");
            
    		String url =
                "jdbc:mysql://localhost:3306/genaudit";
    			
    			dbConnection =
    			    DriverManager.getConnection(
    			                url,"root", "root");
    			
    		System.out.println("Connection successful!");
        }
        catch (Exception E) {
            System.err.println("Error occured while establishing database connectivity");
            E.printStackTrace();
        }
      
		
	}

}
