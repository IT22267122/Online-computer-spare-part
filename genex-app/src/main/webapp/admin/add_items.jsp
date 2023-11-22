<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Items</title>
<%@include file="allCss.jsp" %>
 <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <!-- link Fonts -->
            <link
                href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
                rel="stylesheet"
                />
            <!--BOOTSTRAP5--> 
            <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                crossorigin="anonymous"
                />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
            <!--FONTAWESOME-->
            <link
                rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
                integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
                crossorigin="anonymous"
                referrerpolicy="no-referrer"
                />
            <!-- CSS -->
            <link rel="stylesheet" type="text/css" href="./css/style.css" />
            <link rel="stylesheet" type="text/css" href="./css/queries.css" />
            <link rel="stylesheet" type="text/css" href="./css/homepage.css" />
            <title>Add Post</title>
            <style>
                .container{
                    margin:50px;
                }
                table.table td a.delete {
                    color: #F44336;
                }
                table.table td a.edit {
                    color: #FFC107;
                }
                .btn btn-success{
                    margin-right: 0px;
                }
                .modal-header{
                background-color: #d15321;
                color: white;
                border: none;
                }
            </style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<div class="container my-5" style="margin-left:525px">
		<div class="row">
			<div class="col-md-4">
				<div class="card" >
					<div class="card-body">
						
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Post</h4>
                            </div>
                            
                    <c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg }</p>
						<c:remove var="succMsg" scope="session" />
					</c:if>
					
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg }</p>
						<c:remove var="failedMsg" scope="session" />
					</c:if>
					
						<form action="../add_items" method="post"
						enctype="multiport/form-data">
                            
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>Item Name</label>
                                    <input type="text" class="form-control"  name="itemName">
                                </div>
                                <div class="form-group">
                                    <label>Brand</label>
                                    <input  type="text" class="form-control"  name="brand">
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <input  type="text" class="form-control"  name="category">
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input type="text" class="form-control"  name="price">
                                </div>
                                <div class="form-group">
                                    <label>Status</label>
                                    <input  type="text" class="form-control"  name="status">
                                </div>
                                <!-- <div class="form-group">
                                    <label>Description</label>
                                   
                                    <textarea name="Description" class="form-control" id="blog-text" rows="7" placeholder="Write your content here"></textarea>
                                </div> -->
                                <div class="form-group">
                                    <label>Image Link</label>
                                    <input type="file" name="PostImgURL" class="form-control" required>
                                </div>                            
                            </div>
                            <div class="modal-footer">
                                <a type="button" href="PostControl" class="btn btn-default" data-dismiss="modal" style="border:1px solid green" >Cancel</a>
                                <button type="submit" class="btn btn-success" >Adddd</button>
                            </div>
                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div style="margin-top:40px">
	<%@include file="footer.jsp" %>	
	</div>

</body>
</html>