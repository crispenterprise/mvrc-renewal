package com.crisp.mvrc.db;

import java.sql.Date;
import java.sql.SQLException;

import com.crisp.mvrc.bean.ApplicationBO;
import com.crisp.mvrc.bean.PaymentBO;

public class TestDB {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		try {
			
			
			
			ApplicationDAO applicationDAO = new ApplicationDAO();
		
			PaymentDAO paymentDAO = new PaymentDAO();
			
			ApplicationBO applicationBO = new ApplicationBO();			
			applicationBO.setAccountNo(5);
			applicationBO.setPlateNo("1234EZ");
			applicationBO.setRenewalPeriod(6);
			applicationBO.setNewRegExpiryDate(new Date(System.currentTimeMillis()));
			applicationBO.setApplicationStatus("P");
			
			
			
			int applicationNo = applicationDAO.insertApplication(applicationBO);
			
			if(applicationNo != 0){
				
				PaymentBO paymentBO = new PaymentBO();
				paymentBO.setApplicationNo(applicationNo);
				paymentBO.setAmount(new Double("3000.00"));
				paymentBO.setPaymentDate(new Date(System.currentTimeMillis()));	
				
				paymentDAO.insertPayment(paymentBO);
			}
			
			
			
			
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
