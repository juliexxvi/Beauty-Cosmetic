<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beauty Cosmetic</title>
</head>
<body>
	<h2>Add a new product</h2>

    <form action="insert" method="post">

	<label for="fname">Product name</label>
	<input type="text" id="productName" name="productName" ><br> 
	<label for="imageUrl">Image URL</label>
	<input type="text" id="imageUrl" name="imageUrl" ><br> 
	<label for="packageSize">Package Size</label>
	<input type="text" id="packageSize" name="packageSize" ><br> 
	<label for="description">Description</label>
	<input type="text" id="description" name="description" ><br> 
	<label for="unitPrice">Unit Price</label>
	<input type="text" id="unitPrice" name="unitPrice" ><br> 
	<label for="lotNumber">LOT Number</label>
	<input type="text" id="lotNumber" name="lotNumber" ><br> 
	
	<label>Category:</label> 
		<select id="category" name="category">
			<c:forEach var="category" items="${category}">
				<option id="<c:out value="${category.id}" />" value="<c:out value="${category.id}" />"><c:out value="${category.name}" /></option>
			</c:forEach>
	  	</select>
		<br>
	<label>Brand:</label> 
		<select id="brand" name="brand">
			<c:forEach var="brand" items="${brand}">
				<option id="<c:out value="${brand.id}" />" value="<c:out value="${brand.id}" />"><c:out value="${brand.name}" /></option>
			</c:forEach>
	  	</select>
		<br> 
	<br> 
	<input type="submit" value="Submit">
	</form>
</body>
</html>