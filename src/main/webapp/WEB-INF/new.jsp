<%--
  Created by IntelliJ IDEA.
  User: plche
  Date: 1/03/22
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <title>New Book</title>
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="row justify-content-center">
            <div class="col-4">
                <h1 class="text-center mb-3">New Book</h1>
                <form:form class="rounded border border-primary" action="/books/new" method="post" modelAttribute="book">
                    <div class="row justify-content-center">
                        <div class="col-9">
                            <form:label for="title" path="title" class="form-label mt-3">Title</form:label>
                            <form:errors path="title" cssClass="text-danger" />
                            <form:input type="text" class="form-control mb-3" id="title" path="title" aria-label="Book's title" />
                            <form:label for="description" path="description">Description</form:label>
                            <form:errors path="description" cssClass="text-danger" />
                            <form:textarea class="form-control mb-2" rows="3" id="description" path="description" aria-label="Book's description" />
                            <form:label for="language" path="language">Language</form:label>
                            <form:errors path="language" cssClass="text-danger" />
                            <div class="col-5">
                                <form:input type="text" class="form-control mb-3" id="language" path="language" aria-label="Book's language"/>
                            </div>
                            <form:label for="numberOfPages" path="numberOfPages">Pages</form:label>
                            <form:errors path="numberOfPages" cssClass="text-danger" />
                            <div class="col-3">
                                <form:input type="number" class="form-control mb-3" id="numberOfPages" path="numberOfPages" aria-label="Book's number of pages"/>
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary mb-3">Submit</button>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </body>
</html>
