$(function() {
    function fillShoutbox(result) {
        var shouts = $("#sb");

        shouts.html("");

        for(var i = 0; i < result.length; i++)
        {
            shouts.append("<div class=\"direct-chat-msg\"><div class=\"direct-chat-info clearfix\"><span class=\"direct-chat-name pull-left\">"+ result[i].name + "</span><span class=\"direct-chat-timestamp pull-right\">"+ result[i].date + "</span> </div> <img class=\"direct-chat-img\" src=\"img/defaultUser.png\" alt=\"Message User Image\"><div class=\"direct-chat-text\"> "+ result[i].message +" </div></div>");
        }
    }

    function getShouts() {
        $.get(
            "resources/shout",
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
                url: "resources/shout",
                dataType: "json",
                data: JSON.stringify({"name": name, "message": msg}),
                success: function (result) {
                    $("#sb").append("<div class=\"direct-chat-msg\"><div class=\"direct-chat-info clearfix\"><span class=\"direct-chat-name pull-left\">"+ result[i].name + "</span><span class=\"direct-chat-timestamp pull-right\">"+ result[i].date + "</span> </div> <img class=\"direct-chat-img\" src=\"img/defaultUser.png\" alt=\"Message User Image\"><div class=\"direct-chat-text\"> "+ result[i].message +" </div></div>");
                    $("#sb > .shout").last().fadeIn();
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