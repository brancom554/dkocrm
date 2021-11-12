(function ($) {
    "use strict";
    $("#contactForm").validator().on("submit", function (event) {
        if (event.isDefaultPrevented()) {
            formError();
        } else {
            event.preventDefault();
            submitForm();
        }
    });

////// Contact Form ////////
    var submitContact = $('#submit-message'),
        message = $('#msg');

    submitContact.on('click', function (e) {
        e.preventDefault();

        var $this = $(this);

        $.ajax({
            type: "POST",
            url: 'assets/contact-mail.php',
            dataType: 'json',
            cache: false,
            data: $('#contactForm').serialize(),
            success: function (data) {

                if (data.info !== 'error') {
                    $this.parents('form').find('input[type=text],input[type=email],textarea,select').filter(':visible').val('');
                    message.hide().removeClass('success').removeClass('error').addClass('success').html(data.msg).fadeIn('slow').delay(3000).fadeOut('slow');
                } else {
                    message.hide().removeClass('success').removeClass('error').addClass('error').html(data.msg).fadeIn('slow').delay(3000).fadeOut('slow');
                }
            }
        });
    });


    function formSuccess() {
        $("#contactForm")[0].reset();
        submitMSG(true, "Message Submitted!")
    }

    function formError() {
        $("#contactForm").removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
            $(this).removeClass();
        });
    }

    function submitMSG(valid, msg) {
        if (valid) {
            var msgClasses = "h4 text-left tada animated text-success";
        } else {
            var msgClasses = "h4 text-left text-danger";
        }
        $("#msgSubmit").removeClass().addClass(msgClasses).text(msg);
    }
}(jQuery));