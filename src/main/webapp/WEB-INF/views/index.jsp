<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css">
</head>
<body>
	<h1>Welcome To The Hotel California</h1>
	<h2>Please Select A City From The Drop Down Menu:</h2>
	<form action="/results?city=${city}">
		<select name="cities">
			<c:forEach var="cities" items="${cities}">
				<option value="${cities}">${cities}</option>
			</c:forEach>
		</select>
		<button type="submit">Submit</button> 	
	</form>
</body>
</html>