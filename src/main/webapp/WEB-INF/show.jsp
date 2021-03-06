<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Reading Books</title>
	</head>
	<body>
		<h1><c:out value="${book.title}" /></h1>
		<h3>Description: <c:out value="${book.description}"/></h3>
		<h3>Language: <c:out value="${book.language}"/></h3>
		<h3>Number of Pages: <c:out value="${book.numberOfPages}"/></h3>
		<br />
		<form action="/books/${book.id}" method="post">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete">
		</form>
	</body>
</html>