$(document).ready(function () {
    $('#register-button').click(function (e) {
        $('#registration-panel').slideToggle('slow');
        $(this).toggleClass('active');
        $('#captchaid').slideToggle('slow');
        $(this).toggleClass('g-recaptcha');
    });
    $('#captchaid').slideToggle('slow');
    $(this).toggleClass('g-recaptcha');
})