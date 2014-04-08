<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MVRC Renewal - Sign Up</title>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap-3.1.1-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
    body
    {
    	background-color:#fdfdfd;
    }
    	label
    	{
    		margin-right:15px;
    		margin-left:35px;
    	}
    	
    	input
    	{
    		margin-bottom:10px;
    	}
    </style>
</head>
<body>
 <div class="container">

      <form action="Register" role="form" method="post">
        <h2 class="form-signin-heading">MVRC-Renewal Sign Up</h2>
        <table>
        <tr>
        	<td><label>First Name</label><td><input name="fname" class="form-control" required autofocus></td>
        	<td><label>Email Address</label><td><input name="email" class="form-control" required></td>
        </tr>
        <tr>
        	<td><label>Last Name</label><td><input name="lname" class="form-control" required></td>
        	<td><label>Password</label><td><input name="password" type="password" class="form-control" required></td>
        </tr>
        <tr>
        	<td><label>TRN</label><td><input name="trn" class="form-control" required></td>
        	<td><label>Retype Password</label><td><input name="password_retype" type="password" class="form-control" required></td>
        </tr>
        <tr>
        	<td><label>Parish</label><td><input name="parish" class="form-control" required></td>
			<td><label>Secret Question</label><td><input name="secret_question" class="form-control" required></td>        
        </tr>
        <tr>
        	<td><label>Home #</label><td><input name="home_no" class="form-control" ></td>
        	<td><label>Secret Question</label><td><input name="secret_question" class="form-control" required></td>
        </tr>
        <tr>
        	<td><label>Cell #</label><td><input name="cell_no" class="form-control" ></td>
			<td><label>Secret Answer</label><td><input name="secret_answer" class="form-control" required></td>        
        </tr>

		</table>
		<br>
        <button class="btn btn-lg btn-primary" type="submit">Submit</button>
        
      </form>

    </div> <!-- /container -->
</body>
</html>