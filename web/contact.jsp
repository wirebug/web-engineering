<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Kontakt - - Förderverein Grundschöttele</title>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.6/yeti/bootstrap.min.css">
        <link rel="stylesheet" href="//getbootstrap.com/examples/jumbotron/jumbotron.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <%@include file="/WEB-INF/jspf/header.jspf" %>
            <div class="row marketing">
                <form id="form-contact" class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input name="email" type="email" class="form-control" id="inputEmail" placeholder="Email" required autofocus>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                            <input name="name" type="text" class="form-control" id="inputName" placeholder="Name" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtMsg" class="col-sm-2 control-label">Nachricht</label>
                        <div class="col-sm-10">
                            <textarea name="msg" class="form-control" rows="3" id="txtMsg" required></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input id="contact-submit" type="submit" class="btn btn-default" value="abschicken">
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
        <script src="js/contact.js"></script>
    </body>
</html>