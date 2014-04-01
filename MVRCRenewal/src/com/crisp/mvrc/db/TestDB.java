package com.crisp.mvrc.db;

import java.sql.Date;
import java.sql.SQLException;

import com.crisp.mvrc.bean.ApplicationBO;

public class TestDB {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		try {
			
			
			ApplicationDAO applicationDAO = new ApplicationDAO();
		
			ApplicationBO applicationBO = new ApplicationBO();
			
			
			applicationBO.setAccountNo(5);
			applicationBO.setPlateNo("1234EZ");
			applicationBO.setRenewalPeriod(6);
			applicationBO.setNewRegExpiryDate(new Date(System.currentTimeMillis()));
			applicationBO.setApplicationStatus("P");
			
			
			
			applicationDAO.insertApplication(applicationBO);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
