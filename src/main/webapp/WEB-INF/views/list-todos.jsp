<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">

        <table class="table table-striped">
            <caption>Your todos are</caption>
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Target Date</th>
                    <th>Is Completed</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.desc}</td>
                    <td>${todo.date}</td>
                    <td>${todo.done}</td>
                    <td><a class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>


        <br />
        <div>
            <a class="btn btn-success" href="/add-todo">Add</a>
        </div>

    </div>
    <script src="webjars/jquery/3.3.1"></script>
    <script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
