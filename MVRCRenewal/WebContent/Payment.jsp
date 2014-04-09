 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.net.*,java.util.*,org.apache.http.*,org.json.*,org.apache.http.client.methods.*, org.apache.http.impl.client.*, org.apache.http.message.*,org.apache.http.client.entity.*,org.apache.commons.lang.StringUtils" %>

<jsp:useBean id="applicationView" class="com.crisp.mvrc.app.view.SubmitApplicationView" scope="session"/>
<jsp:setProperty name="applicationView" property="*"/>  
 <%

 
 	String plateNo = (String)request.getSession().getAttribute("plateNo");

	if(StringUtils.isBlank(plateNo)){
		
		response.sendRedirect("New-Application.jsp");
		
	}else{
		
	}
	
	
//use this to check if the state of the process
//show and hide UI items/and perform actions if the button was clicked
boolean formSubmitted = false;

StringBuffer debug = new StringBuffer();

if(request.getParameter("submitButton") != null){
	
	formSubmitted = true;
	

	boolean submittedSuccess = submitApplicationAPI(applicationView);

	if(submittedSuccess){
	
		debug.append("plateNo: "+plateNo);
		debug.append("period: "+request.getParameter("period"));
		//response.sendRedirect("Receipt.jsp");
		
	}
	
	

}else if(request.getParameter("submitCancel") != null){
	
	formSubmitted = false;
	response.sendRedirect("Home.jsp");
	
	
}

%>


<%!//http://www.jsptut.com/ 

boolean submitApplicationAPI(com.crisp.mvrc.app.view.SubmitApplicationView thisBO){
	

	boolean appSubmitted = false;
	
	StringBuffer result = new StringBuffer();
	
	//start action
	
	try{
    	
    	URL url = null;
    	   	    	
    	HttpURLConnection urlConn = null;
	
		DataOutputStream output = null;

		DataInputStream input = null;
				  
		JSONObject obj=new JSONObject();
		
		
		Random generator = new Random(); 
		int randomInt = generator.nextInt(10000000) + 1;			
		String trn = String.valueOf(randomInt);			
				
					
		//obj.put("plate",thisBO.getPlateNo());			
		
		obj.put("trn",trn);			
		obj.put("first_name","John");
		obj.put("last_name","Doe");
		obj.put("username","jdoe");
		
	
		obj.put("user_account_id",9);
		obj.put("renewal_period",new Integer(7));
		obj.put("plate","test44");		
		obj.put("cost","3000.00");
		obj.put("creditcard_no","23234342342");
			
		
		
		System.out.println("JSon Request Parameter: "+obj.toString());
		
		CloseableHttpClient httpClient = HttpClients.createDefault();
		HttpPost post = new HttpPost("http://localhost:8080/SubmitApplicationAPI/submit_application");
		
		CloseableHttpResponse resp = null;
		
		
		 List<NameValuePair> params = new ArrayList<NameValuePair>();
	     params.add(new BasicNameValuePair("jsondata", obj.toString()));
		
	     post.setEntity(new UrlEncodedFormEntity(params));
            
	     resp = httpClient.execute(post);
	     
	     System.out.println("Status Code:  "+ resp.getStatusLine().getStatusCode());
	    
	     if(resp.getStatusLine().getStatusCode() == 200){
	    	 appSubmitted = true;
	     }else{
	    	 appSubmitted = false;
	     }
	     
	     BufferedReader rd = new BufferedReader(new InputStreamReader(resp.getEntity().getContent()));

	     
	     
	     String line = "";
	     while ((line = rd.readLine()) != null) {
	         result.append(line);
	     }
	     System.out.println("Result: " + result);
	     
	    
	}
    
    
    catch(Exception e){
			   e.printStackTrace();
	}		
	
	
	//end action
	
	return appSubmitted;
	
}%>


<%
	if (formSubmitted) {

	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MVRC Renewal</title>
<link href="bootstrap-3.1.1-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">

<style>
#tblPayment label
{
	margin-right:7px;
}

#tblPayment tr
{
	padding-bottom:7px;
}


</style>
</head>
<body>
 <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Home.jsp">MVRC Renewal</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="Home.jsp">Overview</a></li>
            <li class="active"><a href="New-Application.jsp">Renew Certificate</a></li>
            <li><a href="View-Transactions.jsp">View Transactions</a></li>
             <li><a href="View-Transactions.jsp">View List Of Approved Payments</a></li>
             <li><a href="View_List_Of_Approved_Payments.jsp">View List Of Approved Payments</a></li>
          </ul>
         
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">New Application <%= plateNo %></h1>
          <div style="width:50%">
          
          
			<form  METHOD=POST ACTION="Payment.jsp">
			
			<div class="panel panel-default">
		  <div class="panel-heading">Renewal Period <%= debug.toString() %></div>
		  <div class="panel-body">
		    <div class="input-group">
		      
		        <input type="radio" name="period" value="6"> <label>6 Months</label>
		        <br>
		        <input type="radio" name="period" value="12"> <label>12 Months</label>
		      
		     
		    </div>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">Payment Information</div>
		  <div class="panel-body" style="background-color:#F9FFF9;">
		  <table id="tblPayment">
		  <tr>
		    <td><label>Card Type</label></td>
		    <td><select name="cardType" class="form-control" style="margin-bottom: 10px;"><option>Visa</option> <option>MasterCard</option></select></td>
		    </tr>
		    <tr>
		    <td><label>Name On Card</label></td>
		    <td><input name="carName" type="text" class="form-control" style="margin-bottom: 10px;"></td>
		    </tr>
		    <tr>
		    <td><label>Credit Card Number</label></td>
		    <td><input name="cardNo" type="text" class="form-control" style="margin-bottom: 10px;"></td>
		    </tr>
		    <tr>
		    <td><label>Expiration Date</label></td>
		    <td><input name="expDate" type="text" class="form-control" style="margin-bottom: 10px;"></td>
		    </tr>
		    <tr>
		    <td><label>CVV Code</label></td>
		    <td><input maxlength="4" name="cvvCode" type="text" class="form-control" style="margin-bottom: 10px;"></td>
		    </tr>
		    </table>
		  </div>
		</div>
		
		
		<button  name="submitCancel" class="btn btn-primary" id="cancel" name="cancel" style="margin-right:7px">Cancel</button><button  name="submitButton" class="btn btn-primary" type="submit">Submit</button>
			</form>
			</div>
		</div>
      </div>
    </div>


</body>
</html>