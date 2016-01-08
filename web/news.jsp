<%@ page import="de.christoph.verein.model.News" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Neuigkeiten - Fouml;rderverein Grundschouml;ttel</title>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.6/yeti/bootstrap.min.css">
        <link rel="stylesheet" href="//getbootstrap.com/examples/jumbotron/jumbotron.css">
        <link rel="stylesheet" href="web/css/style.css">
    </head>
    <body>
        <div class="container">
            <%@include file="/WEB-INF/jspf/header.jspf" %>
            <div class="row marketing">
                <a class="btn btn-default" href="news_create.jsp" role="button">Neuigkeit eintragen</a>
                <hr>
                <jsp:useBean id="newsList" class="de.christoph.verein.model.NewsList" scope="page" />
                <%
                    if(request.getParameter("id") == null)
                    {
                %>
                        <c:forEach var="news" items="${newsList.getNews()}">
                            <article>
                                <header><a href="news.jsp?id=${news.getID()}"><h4>${news.getTitle()}</h4></a></header>
                                <section><p>${news.getExcerpt(240)}</p></section>
                                <footer>
                                    <p>
                                        <span class="glyphicon glyphicon-user"></span> von ${news.getAuthor()}
                                        <span class="glyphicon glyphicon-calendar"></span> am ${news.getDate()}
                                        <span class="glyphicon glyphicon-info-sign"></span> in ${news.getCategory()}
                                    </p>
                                </footer>
                            </article>
                        </c:forEach>
                <%
                    }
                    else
                    {
                        News news = newsList.getNews(request.getParameter("id"));

                        if(news != null)
                        {
                %>
                            <article>
                                <header><h4><%=news.getTitle()%></h4></header>
                                <section><p><%=news.getText()%></p></section>
                                <footer>
                                    <p>
                                        <span class="glyphicon glyphicon-user"></span> von <%=news.getAuthor()%>
                                        <span class="glyphicon glyphicon-calendar"></span> am <%=news.getDate()%>
                                        <span class="glyphicon glyphicon-info-sign"></span> in <%=news.getCategory()%>
                                    </p>
                                </footer>
                            </article>
                <%
                        }
                        else
                        {
                %>
                            <p>Die Neuigkeit konnte nicht gefunden werden.</p>
                <%
                        }
                    }
                %>
            </div>
            <%@include file="/WEB-INF/jspf/footer.jspf" %>
        </div>
        <!--[if lt IE 9]>
        <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="//code.jquery.com/jquery-2.1.4.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </body>
</html>