<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Update a new product</h2>

    <form action="update" method="get">
    <input type="hidden" name="command" value="Update">
    <input type="hidden" name="id" value="${existingProduct.id}"><br> 

	<label for="productName">Product name</label>
	<input type="text" id="productName" name="productName" value="${existingProduct.name}"/><br> 
	<label for="imageUrl">Image URL</label>
	<input type="text" id="imageUrl" name="imageUrl" value="${existingProduct.imageUrl}"><br> 
	<label for="packageSize">Package Size</label>
	<input type="text" id="packageSize" name="packageSize" value="${existingProduct.packageSize}"><br> 
	<label for="description">Description</label>
	<input type="text" id="description" name="description" value="${existingProduct.description}"><br> 
	<label for="unitPrice">Unit Price</label>
	<input type="text" id="unitPrice" name="unitPrice" value="${existingProduct.unitPrice}"><br> 
	<label for="lotNumber">LOT Number</label>
	<input type="text" id="lotNumber" name="lotNumber" value="${existingProduct.lotNumber}"><br> 
	
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