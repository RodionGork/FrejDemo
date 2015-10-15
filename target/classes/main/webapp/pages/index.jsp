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
<div class="container">
    <h1><c:out value="${title}"/></h1>

    <div class="row">
        <div class="col-xs-6 col-sm-3"><a href="http://sourceforge.net/projects/frej/files/">Downloads</a></div>
        <div class="col-xs-6 col-sm-3"><a
                href="http://sourceforge.net/projects/frej/files/frej_doc.zip/download">Documentation</a></div>
        <div class="col-xs-6 col-sm-3"><a href="http://sourceforge.net/projects/frej/forums">Forums</a></div>
        <div class="col-xs-6 col-sm-3"><a href="http://www.sourceforge.net/projects/frej">Project info</a></div>
    </div>

    <div class="row">

        <div class="col-md-6">
            <p><b>FREJ</b> means "Fuzzy Regular Expressions for Java".</p>

            <p>It is simple library (and command-line grep-like utility) which
                could help you when you are in need of approximate string matching or
                substring searching with the help of primitive regular expressions.</p>

            <p>What is "approximate" (or "fuzzy") string comparison?<br/>Just imagine
                that you deal with information (like orders) which is sent to you by many
                people. When these people mention names of places or persons, they could
                bring to you problems of two kinds:
            <ul>
                <li>they make nasty typos;</li>
                <li>they use different variants of names;</li>
            </ul>
            </p>

            <p>For example if you are responsible for checking incoming mail in Washington DC,
                you may want to find letters addressed to US president. You try to find all
                which contains words "Barack Obama" on envelope. But you soon discover
                that sometimes people address this person as "Barack Hussein Obama II" and
                sometimes like "B. H. Obama" and also "Barak H. Abama" (note typos).</p>

            <p>You read google and wikipedia and found that you can compare "Barak" with
                "Barack" and "Baarck" etc. with the help of "approximate string matching
                algorithm", also called "fuzzy string matching". But after you use or implement
                some of algorithms you found that it is not sufficient. You need "approximate"
                substring search, and ability to specify some complex patterns (for example
                country could be specified like "Russia" and like "Russian Federation" - but
                it should not be mixed with "Belarussian Republic" etc.</p>

            <p>Later you even find out that you sometimes need some automatic substitutions
                to be described by patterns themselves (for example if you found that the
                envelope is signed for one of Barack Obama or John McCain, you would like
                the correct name to be supposed at once, excluding any typos). You now understand
                that you need regular expressions.</p>

            <p>If you want library which can simultaneously use regular expressions and
                approximate string matching, you will found that here is TRE. But it is for
                C++. FREJ project is much simpler and far not as efficient, but it is for
                Java and if your task does not require millions of comparisions against very
                complicated patterns per seconds - you may found it useful.</p>

            <p>Now I am working on filling this resource with descriptions, documentations
                and also on slight improvement of my library. Simple guide to regexp syntax
                is already provided and aided with examples (but would be improved further).
                Also there is working library, javadocs and sample "grep-like" utility
                (which tests input lines against specified pattern and provides replacement
                if specified, and if line does match the pattern.</p>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <form id="mainform" name="mainform" method="post" action="/process">
                    <h2><label for="pattern">Pattern:</label></h2>
                    <textarea class="form-control" rows="5" id="pattern" name="pattern"></textarea>

                    <h2><label for="input">Input:</label></h2>
                    <textarea class="form-control" rows="5" id="input" name="input"></textarea>
                    <input type="submit" name="button" id="exactButton" value="Exact"/>
                    <input type="submit" name="button" id="startButton" value="Start"/>
                    <input type="submit" name="button" id="demoButton" value="Demooooooooooo"/>
                </form>
            </div>

            <h2><label for="answer">Answer:</label></h2>
            <textarea class="form-control" rows="5" id="answer" name="answer"><c:out value="${result}"/></textarea>

        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>