$(function() {
    $("#form-contact").submit(function(e) {
        e.preventDefault();

        window.location = "mailto:test@example.com" +
            "&cc=" + $("#inputEmail").val() +
            "&subject=Webseite" +
            "&body=Hallo,%0D%0A%0D%0A" + $("#txtMsg").val() + "%0D%0A%0D%0A" +
            "MfG. " + $("#inputName").val();
    });
});