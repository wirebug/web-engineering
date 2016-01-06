<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Startseite - Westf&auml;lischer Yachtclub Delecke</title>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.6/yeti/bootstrap.min.css">
        <link rel="stylesheet" href="//getbootstrap.com/examples/jumbotron/jumbotron.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <%@include file="/WEB-INF/jspf/header.jspf" %>
            <div class="container jumbotron">
                <h1>Helfe uns!</h1>
                <p class="lead">Der Förderverein der Löschgruppe Grundschöttel unterstützt die Truppe bei allen Belangen. So werden neue Geräte, Fortbildungen und vieles mehr von uns finaziert. Aber auch wenn nachts ein heiße Suppe für die Kameraden gebraucht wird, sind wir da! Werde Mitglied und unterstütze deine lokalen Retter.</p>
                <p><a class="btn btn-primary" href="#" role="button">Mitglied werden &raquo;</a></p>
            </div>
                <div class="row">
                    <jsp:useBean id="newsList" class="de.christoph.verein.model.NewsList" scope="page" />
                    <c:forEach var="news" items="${newsList.getNews(0, 3)}">
                        <article class="col-md-4">
                            <header><h4>${news.getTitle()}</h4></a></header>
                            <section><p>${news.getExcerpt(120)}</p></section>
                            <a class="btn btn-default" href="news.jsp?id=${news.getID()}" role="button">Weiterlesen &raquo;</a>
                            <footer>
                                <p>
                                    <span class="glyphicon glyphicon-user"></span> von ${news.getAuthor()}
                                    <span class="glyphicon glyphicon-calendar"></span> am ${news.getDate()}
                                    <span class="glyphicon glyphicon-info-sign"></span> in ${news.getCategory()}
                                </p>
                            </footer>
                        </article>
                    </c:forEach>
                </div>
                    <div id="shouts"></div>
                        <form id="form-shout" class="form-horizontal">
                            <div class="form-group">
                                <label for="name" class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input name="name" type="text" class="form-control" id="name" placeholder="Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="message" class="col-sm-2 control-label">Nachricht</label>
                                <div class="col-sm-10">
                                    <input name="message" maxlength="140" type="text" class="form-control" id="message" placeholder="Text" aria-describedby="count">
                                    <span id="count" class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <input id="shout-submit" type="submit" class="btn btn-default" value="Senden">
                                </div>
                            </div>
                        </form>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </div>
        <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="//code.jquery.com/jquery-2.1.4.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <script src="js/shout.js"></script>
    </body>
</html>