<%--
  Created by IntelliJ IDEA.
  User: plche
  Date: 1/03/22
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                <form class="rounded border border-primary" action="/books/new" method="post">
                    <div class="row justify-content-center">
                        <div class="col-9">
                            <label for="title" class="form-label mt-3">Title</label>
                            <input type="text" class="form-control mb-3" id="title" name="title" aria-label="Book's title">
                            <label for="description">Description</label>
                            <textarea class="form-control mb-2" rows="3" id="description" name="description" aria-label="Book's description"/></textarea>
                            <label for="name">Language</label>
                            <div class="col-5">
                                <input type="text" class="form-control mb-3" id="name" name="language" aria-label="Book's language"/>
                            </div>
                            <label for="pages">Pages</label>
                            <div class="col-3">
                                <input type="number" class="form-control mb-3" id="pages" name="pages" aria-label="Book's pages"/>
                            </div>
                            <div class="d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary mb-3">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
