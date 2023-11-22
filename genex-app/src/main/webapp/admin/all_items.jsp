<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Items</title>
<%@include file="allCss.jsp" %>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="container">
		<table class="table table-striped">
  <thead class="bg-warning text-white">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Item name</th>
      <th scope="col">Brand</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
  
	  <%
	  ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
	  List<ItemDtls> list=dao.getAllItems();
	  for(ItemDtls i:list)
	  %>
  
	  
	  <tr>
		  <td><%=i.getItemID()%></td>
		  <td><img src="../item/<%=i.getPhoto()%>"
		  style="width:50px; height:50px;"></td>
		  <td><%=i.getItemName() %></td>
		  <td><%=i.getBrand() %></td>
		  <td><%=i.getPrice() %></td>
		  <td><%=i.getCategory() %></td>
		  <td><%=i.getStatus() %></td>
		  <td>
		  <a href="#" class="btn btn-sm btn-warning">Edit</a>
		  <a href="#" class="btn btn-sm btn-danger">Delete</a>
		  </td>
	</tr>
	  
  <% %>
  
  
    
    
  </tbody>
</table>
	
	</div>
	
	<div style="margin-top:40px">
	<%@include file="footer.jsp" %>	
	</div>
</body>
</html> 