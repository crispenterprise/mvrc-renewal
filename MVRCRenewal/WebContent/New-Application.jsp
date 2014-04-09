<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

//use this to check if the state of the process
//show and hide UI items/and perform actions if the button was clicked
boolean formSubmitted = false;

if(request.getParameter("submitButton") == null){
	
	formSubmitted = false;
	
	request.getSession().setAttribute("plateNo", null);

}else{
	
	formSubmitted = true;
	
	String plateNo = request.getParameter("plateNo");
	
	if(StringUtils.isBlank(plateNo)){
		
		response.sendRedirect("Verify-Information.jsp");
		
	}else{
		
		request.getSession().setAttribute("plateNo", plateNo);
		
		response.sendRedirect("Verify-Information.jsp");
		
	}
		
	
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
form
{
background-color: #F8F8F8;
padding: 21px;
border-radius: 5px
}

#plateNo
{
font-size: 22px;
letter-spacing: 6px;
color: #3A8311;
text-transform: uppercase;
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
            <li><a href="View_List_Of_Approved_Payments.jsp">View List Of Approved Payments</a></li>
          </ul>
         
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">New Application</h1>
          <div style="width:30%">
			<form  METHOD=POST ACTION="New-Application.jsp">
			<label>Plate Number</label>
			<input name="plateNo" id="plateNo" type="text" maxlength="6" class="form-control">
			<br>
			<button name="submitButton" class="btn btn-primary btn-block" type="submit">Submit</button>
			</form>
			</div>
		</div>
      </div>
    </div>


</body>
</html>