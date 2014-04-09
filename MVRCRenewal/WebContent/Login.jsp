<%@page import="com.crisp.mvrc.db.LoginDAO, com.crisp.mvrc.dto.UserAccountDTO, org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>MVRC Renewal - Login</title>
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
	</head>
	<body>
	
		<%	
			String errMsg = "";
			
			if(request.getParameter("loginButton") != null){
				LoginDAO loginDAO = new LoginDAO();
				
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				UserAccountDTO user = loginDAO.authenticateUser(username, password);
				
				if(null != user){
					request.getSession().setAttribute("user", user);
					response.sendRedirect("Home.jsp");			
				}else{
					errMsg = "Login Failed, Please verify username and password.";
					request.getSession().setAttribute("user", null);
				}
			}
		%>
	
	
	    <div class="container" align="center">
	    	<%
				if (StringUtils.isNotBlank(errMsg)) {
			%>
			<div class="alert alert-danger"><%=errMsg%></div>
			<%
				}
			%>
	
	      	<form action="Login.jsp" class="form-signin" method="post">
		        <h2 class="form-signin-heading">Please sign in</h2>
		        <input type="text" name="username" class="form-control">
		        <input type="password" name="password" class="form-control">
		
		        <button class="btn btn-lg btn-primary btn-block" type="submit" name="loginButton">Sign in</button>
		        <br>
	      	</form>
	
	    </div>
	</body>
</html>