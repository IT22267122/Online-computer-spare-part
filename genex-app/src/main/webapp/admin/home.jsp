<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCss.jsp" %>
<style type="text/css">
a{
	text-decoration:none;
	color:black;
}

a:hover{
	text-decoration:none;
	color:black;
}

</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<a href="add_items.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
							<h4>Add Items</h4>
							-------------------
		 				</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
			<a href="all_items.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-computer fa-3x text-danger"></i><br>
							<h4>All Items</h4>
							-------------------
							
						</div>
					</div>
			</a>
			</div>
			
			<div class="col-md-3">
			<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box fa-3x text-warning"></i><br>
							<h4>Orders</h4>
							-------------------
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-3">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
							<h4>Logout</h4>
							-------------------
							
						</div>
					</div>
			</div>
		</div>
	</div>
	<div style="margin-top:130px">
	<%@include file="footer.jsp" %>	
	</div>
</body>
	
</html>