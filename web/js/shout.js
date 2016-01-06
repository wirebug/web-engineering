$(function() {
    function fillShoutbox(result) {
        var shouts = $("#shouts");

        shouts.html("");

        for(var i = 0; i < result.length; i++)
        {
            shouts.append("<div class=\"shout\"><h4>" + result[i].name + " (" + result[i].date + "):</h4><p>" + result[i].message + "</p></div>");
        }
    }

    function getShouts() {
        $.get(
            "res/shout",
            function (result) {
                fillShoutbox(result);
            }
        );
    }

    getShouts();

    setInterval(function() {
        getShouts();
    }, 3000);

    $("#name").keypress(function() {
        $(this).parent().removeClass("has-danger");
    });

    $("#message").keypress(function() {
        var length = $(this).val().length;
        var maxLength = $(this).attr("maxlength");

        $("#count").html("Noch " + (maxLength - length) + " Zeichen in der Shoutbox verfügbar.");

        if(length == maxLength)
        {
            $(this).parent().addClass("has-danger");
        }
        else
        {
            $(this).parent().removeClass("has-danger");
        }
    });

    $("#form-shout").submit(function(e) {
        e.preventDefault();

        var name = $("#name").val();
        var msg = $("#message").val();

        if(name.length > 0 && msg.length > 0)
        {
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "res/shout",
                dataType: "json",
                data: JSON.stringify({"name": name, "message": msg}),
                success: function (result) {
                    $("#shouts").append("<div class=\"shout\" style=\"display: none;\"><h4>" + result.name + " (" + result.date + "):</h4><p>" + result.message + "</p></div>");
                    $("#shouts > .shout").last().fadeIn();
                    $("#message").val("").keypress();
                }
            });
        }
        else
        {
            $("#name").parent().addClass("has-danger");
            $("#message").parent().addClass("has-danger");
        }
    });
});