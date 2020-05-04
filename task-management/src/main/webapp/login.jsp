 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Log in with your account</title>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	</head>
	</head>
	
	<body>
	
		<div class="container" style="width:50%; margin:auto">
				<div class="panel-heading">
					<h3>Log in</h3>
				</div>
			
					<form method="POST" action="${contextPath}/login" class="form-signin" >
					
						<div class="form-group ${error != null ? 'has-error' : ''}">
						<span>${message}</span> 
						
						<div class="row">
							<div class="form-group col-md-12">
								<div class="form-label-group">
									<input name="username" type="text" id="username" class="form-control" placeholder="Username" />
									<label for="username"></label>
								</div>
							</div>	
						</div>
						
						<div class="row">
							<div class="form-group col-md-12">
								<div class="form-label-group">
									<input name="password" type="password" id="password" class="form-control" placeholder="Password" /> 
									<label for="password"></label>
									<span>${error}</span>
								</div>
							</div>
						</div>
						
						
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			
						<button class="btn btn-primary" type="submit">Log In</button>
							
						<h4 class="text-center">
							<a href="${contextPath}/registration">Create a user account</a>
						</h4>
							
						<h4 class="text-center">
							<a href="${contextPath}/adminregistration">Create an Admin account</a>
						</h4>
						</div>
					</form>
				</div>
			
	</body>
</html>