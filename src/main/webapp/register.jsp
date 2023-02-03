<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Register Forms</h2>
	<form action="/confirmation.jsp">
		<label for="fname">First name:</label>
		<input type="text" id="fname" name="fname" ><br> 
		<label for="lname">Last name:</label>
		<input type="text" id="lname" name="lname" ><br> 
		<label>Gender:</label>
			<input type="radio" id="html" name="gender" value="Male">
		  	<label for="html">Male</label>
		  	<input type="radio" id="css" name="gender" value="Female">
		  	<label for="css">Female</label>
		  	<input type="radio" id="css" name="gender" value="Bede">
		  	<label for="css">Bede</label>
		<br> 
		<label>Country:</label> 
			<select id="country" name="country">
		    <option value="USA">USA</option>
		    <option value="AUS">AUS</option>
		    <option value="VN">VN</option>
		  </select>
			<br>
		<label>Dependents:</label> 
		<input type="checkbox" id="Parents" name="dependents" value="Parents">
		  <label for="Parents"> Parents</label>
		  <input type="checkbox" id="Children" name="dependents" value="Children">
		  <label for="Children"> Children</label>
		  <input type="checkbox" id="Wife-Husband" name="dependents" value="Wife-Husband">
		  <label for="Wife-Husband"> Wife-Husband</label><br><br>
		<br> 
		<input type="submit" value="Submit">
	</form>



</body>
</html>