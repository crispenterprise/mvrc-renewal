package com.crisp.mvrc.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.crisp.mvrc.dto.MVRCDTO;

public class MVRCDAO extends BaseDAO {
	
	public MVRCDAO()
	{
		super();
	}
	
	public MVRCDTO getMVRCDetails(String plateNo)
	{
		MVRCDTO mvDetails = null;
		
		PreparedStatement stmt = null;
		
		String query = "select * from motor_vehicle_details where plate_reg_no = ?";
		
			try {
				
				stmt = dbConnection.prepareStatement(query);
				
				stmt.setString(1, plateNo);
				
				ResultSet result = stmt.executeQuery(query);
				
				if(result.next())
				{	
					mvDetails = new MVRCDTO();
					
					mvDetails.setVehicleId(String.valueOf(result.getInt(1)));
					mvDetails.setPlateRegNo(result.getString(2));
					mvDetails.setMake(result.getString(3));
					mvDetails.setModel(result.getString(4));
					mvDetails.setYear(String.valueOf(result.getInt(5)));
					mvDetails.setEngineNo(result.getString(6));
					mvDetails.setChassisNo(result.getString(7));
					mvDetails.setFitnessIssueDate(result.getString(8));
					mvDetails.setFitnessExpiryDate(result.getString(9));
					mvDetails.setExamDepot(result.getString(10));
					mvDetails.setRegIssueDate(result.getString(11));
					mvDetails.setRegExpiryDate(result.getString(12));
					mvDetails.setInsuranceCompany(result.getString(13));
					mvDetails.setOwnerName(result.getString(14));
					mvDetails.setInsuranceIssueDate(result.getString(15));
					mvDetails.setInsuranceExpiryDate(result.getString(16));
					
				}
				else{
				
					mvDetails = null;
				}
					
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				mvDetails = null;
			}
		
		return mvDetails;
	}
	
}
