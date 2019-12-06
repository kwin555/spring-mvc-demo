<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <link href="webjars/bootstrap/4.4.1/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Add a todo</h1>
        <form action="/add-todo" method="POST">
            <fieldset class="form-group">
                <label> Description: </label>
                &nbsp; <input name="desc" type="text" class="form-control" required="required" />
            </fieldset>
            <input class="btn btn-success" type="submit" value ="Add" />
        </form>
    </div>
    <script src="webjars/jquery/3.3.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
