<%@ page import="de.christoph.verein.model.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Neuigkeit anlegen - Westf&auml;lischer Yachtclub Delecke</title>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.6/yeti/bootstrap.min.css">
        <link rel="stylesheet" href="//getbootstrap.com/examples/jumbotron/jumbotron.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <%@include file="/WEB-INF/jspf/header.jspf" %>
            <div class="row marketing">
                <form action="NewsServlet" method="POST" class="form-horizontal">
                    <div class="form-group">
                        <label for="inputTitle" class="col-sm-2 control-label">Titel</label>
                        <div class="col-sm-10">
                            <input name="title" type="text" class="form-control" id="inputTitle" placeholder="Überschrift" value="Anschaffung" required autofocus>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAuthor" class="col-sm-2 control-label">Autor</label>
                        <div class="col-sm-10">
                            <input name="author" type="text" class="form-control" id="inputAuthor" placeholder="Author" value="Christoph" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputDate" class="col-sm-2 control-label">Datum</label>
                        <div class="col-sm-10">
                            <input name="date" type="date" class="form-control" id="inputDate"pattern="[0-3][0-9]\.[0-1][0-9]\.[0-9]{4,4}" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="selectCategory" class="col-sm-2 control-label">Kategorie</label>
                        <div class="col-sm-10">
                            <select name="category" class="form-control" id="selectCategory" required>
                                <%
                                    for(Category cat : Category.values())
                                    {
                                %>
                                        <option><%=cat%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtText" class="col-sm-2 control-label">Nachricht</label>
                        <div class="col-sm-10">
                            <textarea name="text" class="form-control" rows="3" id="txtText"required>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button id="news-submit" type="submit" class="btn btn-default">Abschicken</button>
                        </div>
                    </div>
                </form>
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