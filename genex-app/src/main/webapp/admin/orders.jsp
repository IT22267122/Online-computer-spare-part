<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Orders</title>
<%@include file="allCss.jsp" %>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="container">
		<table class="table table-striped">
  <thead class="bg-warning text-white">
    <tr>
      <th scope="col">Order ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Phone No.</th>
      <th scope="col">Item name</th>
      <th scope="col">Brand</th>
      <th scope="col">Price</th>
      <th scope="col">Payment type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Otto</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Otto</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>Otto</td>
	  <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Otto</td>   
       </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
      <td>Otto</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Otto</td>
    </tr>
  </tbody>
</table>
	
	</div>
	
	<div style="margin-top:40px">
	<%@include file="footer.jsp" %>	
	</div>
</body>
</html> 