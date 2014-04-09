<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MVRC Renewal</title>
<link href="bootstrap-3.1.1-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">

<style>



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
          <div style="width:50%">
			<form>
			
			<div class="panel panel-default">
		  <div class="panel-heading">Vehicle Details</div>
		  <div class="panel-body">
		    <table width="100%">
		    	<tr>
		    		<td><b>Make</b><br>Honda</td>
		    		<td><b>Model</b><br>City</td>
		    		<td><b>Model</b><br>2012</td>
		    	</tr>
		    	<tr>
		    		<td><b>Engine No.</b><br>7137283212</td>
		    		<td><b>Chassis No.</b><br>7631yue73</td>
		    		<td><b>Plate No.</b><br>5040GA</td>
		    	</tr>
		    </table>
		  </div>
		</div>
		
			<div class="panel panel-default">
		  <div class="panel-heading">Fitness Details</div>
		  <div class="panel-body">
		    <table width="100%">
		    	<tr>
		    		<td><b>Issue Date</b><br>01/03/2014</td>
		    		<td><b>Expiry Date</b><br>01/03/2015</td>
		    		<td><b>Exam Depot</b><br>Swallowfield Depot - St. Andrew</td>
		    	</tr>
		
		    </table>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">Registration Details</div>
		  <div class="panel-body">
		     <table width="50%">
		    	<tr>
		    		<td><b>Issue Date</b><br>01/04/2013</td>
		    		<td><b>Expiry Date</b><br>01/04/2014></td>
		    		
		    	</tr>
		
		    </table>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-heading">Isurance Details</div>
		  <div class="panel-body">
		    <table width="100%">
		    	<tr>
		    		<td><b>Insurance Company</b><br>ICWI</td>
		    		<td><b>Owner's Name</b><br>DOE, JOHN RICHARD</td>
		    		<td><b>Issue Date</b><br>01/02/2014</td>
		    		<td><b>Expiry Date</b><br>01/02/2015/td>
		    	</tr>
		
		    </table>
		  </div>
		</div>
		
		<button class="btn btn-primary" id="cancel" name="cancel" style="margin-right:7px">Cancel</button> <button class="btn btn-primary" type="submit">Continue</button>
			</form>
			</div>
		</div>
      </div>
    </div>


</body>
</html>