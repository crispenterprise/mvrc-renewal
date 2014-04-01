package com.crisp.mvrc.db;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.crisp.mvrc.bean.ApplicationBO;


public class ApplicationDAO extends BaseDAO {

	
	public ApplicationDAO() throws SQLException {
		super();
		
	}


	public void insertApplication(ApplicationBO application){
		
		
			try {
				
				PreparedStatement stmt = null;
							
				String query = "insert into application (account_no, plate_no, renewal_period, new_reg_expiry_date, application_status) VALUES (?, ?, ?, ?, ?)";
			
				stmt = dbConnection.prepareStatement(query);
			
					stmt.setInt(1, application.getAccountNo());
					stmt.setString(2, application.getPlateNo());
					stmt.setInt(3, application.getRenewalPeriod());
					stmt.setDate(4, application.getNewRegExpiryDate());
					stmt.setString(5, application.getApplicationStatus());
				
				
					
					 int count = stmt.executeUpdate();
				     System.out.println(count + "row(s) affected");
					
				     stmt.close();
				
						        
	            
	            
				
			} catch (SQLException e) {
				
				System.out.println("SQLException: " + e.getMessage());
	            System.out.println("SQLState:     " + e.getSQLState());
	            System.out.println("VendorError:  " + e.getErrorCode());
	
	            
			}
	}
	
	
	
	
}
