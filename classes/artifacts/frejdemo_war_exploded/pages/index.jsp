<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Bootstrap -->


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <c:set var="title" scope="request" value="Frej Demo"/>
    <title><c:out value="${title}"/></title>
</head>
<body>
<h1><c:out value="${title}"/></h1>

<div class="form-group">
    <form id="mainform" name="mainform" method="post" action="/process">
        <label for="pattern">Pattern:</label>
        <textarea class="form-control" rows="5" id="pattern" name="pattern"></textarea>
        <label for="input">Input:</label>
        <textarea class="form-control" rows="5" id="input" name="input"></textarea>
        <input type="submit" name="button" id="exactButton" value="Exact" />
        <input type="submit" name="button" id="startButton" value="Start" />
        <input type="submit" name="button" id="demoButton" value="Demo" />
    </form>
</div>

<h2>
    <label for="answer">Answer:</label>
    <textarea class="form-control" rows="5" id="answer" name="answer"><c:out value="${result}" /></textarea>
</h2>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>