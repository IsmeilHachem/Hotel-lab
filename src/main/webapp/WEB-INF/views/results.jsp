<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css">
</head>
<body>
	<h1>Hotels in ${cities}</h1>
	<h2>Such A Lovely Place, Such A Lovely Place</h2>
	<table class="table">
		<thead>
			<tr>
				<th>Name</th>
				<th>City</th>
				<th>Price Per Night</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="hotels" items="${hotels}">
				<tr>
					<td>${hotels.name}</td>
					<td>${hotels.city}</td>
					<td>${hotels.pricePerNight}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/">Home Page</a>
</body>
</html>