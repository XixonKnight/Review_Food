// Back-to-top
$(window).scroll(function() {
    // $('.back-to-top').hide();
    var height = $(window).scrollTop();
    if (height > 100) {
        $('#up-top').fadeIn();
    } else {
        $('#up-top').fadeOut();
    }
});
$('.back-to-top').click(function() {
    $('body,html').animate({
        scrollTop: 0
    }, 300);
});
$(document).ready(function() {
    $("#up-top").click(function(event) {
        event.preventDefault();
        $("html, body").animate({
            scrollTop: 0
        }, "slow");
        return false;
    });

});