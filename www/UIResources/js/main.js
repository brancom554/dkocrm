(function ($) {
    "use strict";
    $('.mean-menu').meanmenu({meanScreenWidth: "1199"});
    $(window).on('scroll', function () {
        if ($(this).scrollTop() > 120) {
            $('.navbar-area').addClass("is-sticky");
        } else {
            $('.navbar-area').removeClass("is-sticky");
        }
    });
    $(".megamenu-title").click(function () {
        $(".megamenu-category").toggleClass("active");
        $(".megamenu-category2").toggleClass("active");
    });
    $(".others-option-for-responsive .dot-menu").on("click", function () {
        $(".others-option-for-responsive .container .container").toggleClass("active");
    });
    $('.home-slides').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        autoplay: true,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        items: 1,
        autoplayHoverPause: true,
        navText: ["<i class='flaticon-left-chevron'></i>", "<i class='flaticon-next'></i>"]
    });
    $('.home-slides-two').owlCarousel({
        loop: true,
        nav: false,
        dots: true,
        autoplayHoverPause: true,
        autoHeight: true,
        autoplay: true,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        items: 1,
        navText: ["<i class='flaticon-left-chevron'></i>", "<i class='flaticon-next'></i>"]
    });
    $('.products-slides').owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        autoplayHoverPause: true,
        autoplay: true,
        margin: 30,
        navText: ["<i class='flaticon-left-chevron'></i>", "<i class='flaticon-next'></i>"],
        responsive: {0: {items: 1,}, 576: {items: 2,}, 768: {items: 3,}, 992: {items: 4,}}
    });
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });
    $('.testimonials-slides').owlCarousel({
        nav: true,
        loop: true,
        margin: 30,
        dots: false,
        autoplay: true,
        autoplayHoverPause: true,
        navText: ["<i class='flaticon-left-chevron'></i>", "<i class='flaticon-next'></i>"],
        responsive: {0: {items: 1,}, 576: {items: 1,}, 768: {items: 2,}, 992: {items: 2,}}
    });
    $('.feedback-slides').owlCarousel({
        nav: false,
        loop: true,
        margin: 30,
        dots: true,
        autoplay: true,
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        autoplayHoverPause: true,
        navText: ["<i class='flaticon-left-chevron'></i>", "<i class='flaticon-next'></i>"],
        responsive: {0: {items: 1}, 576: {items: 1}, 768: {items: 1}, 992: {items: 2}, 1200: {items: 1}}
    });
    $('.input-counter').each(function () {
        var spinner = jQuery(this), input = spinner.find('input[type="text"]'), btnUp = spinner.find('.plus-btn'),
            btnDown = spinner.find('.minus-btn'), min = input.attr('min'), max = input.attr('max');
        btnUp.on('click', function () {
            var oldValue = parseFloat(input.val());
            if (oldValue >= max) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue + 1;
            }
            spinner.find("input").val(newVal);
            spinner.find("input").trigger("change");
        });
        btnDown.on('click', function () {
            var oldValue = parseFloat(input.val());
            if (oldValue < 1) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue - 1;
            }
            spinner.find("input").val(newVal);
            spinner.find("input").trigger("change");
        });
    });

    function makeTimer() {
        var endTime = new Date("September 20, 2021 17:00:00 PDT");
        var endTime = (Date.parse(endTime)) / 1000;
        var now = new Date();
        var now = (Date.parse(now) / 1000);
        var timeLeft = endTime - now;
        var days = Math.floor(timeLeft / 86400);
        var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
        var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
        var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
        if (hours < "10") {
            hours = "0" + hours;
        }
        if (minutes < "10") {
            minutes = "0" + minutes;
        }
        if (seconds < "10") {
            seconds = "0" + seconds;
        }
        $("#days").html(days + "<span>Days</span>");
        $("#hours").html(hours + "<span>Hours</span>");
        $("#minutes").html(minutes + "<span>Minutes</span>");
        $("#seconds").html(seconds + "<span>Seconds</span>");
    }

    setInterval(function () {
        makeTimer();
    }, 0);
    $('.products-details-image-slides').owlCarousel({
        loop: true,
        nav: false,
        thumbs: true,
        dots: false,
        thumbsPrerendered: true,
        autoplayHoverPause: true,
        autoplay: true,
        items: 1,
        navText: ["<i class='flaticon-left-chevron'></i>", "<i class='flaticon-next'></i>"]
    });
    $(".js-range-of-price").ionRangeSlider({
        type: "double",
        drag_interval: true,
        min_interval: null,
        max_interval: null,
    });
    $('select').niceSelect();
    $(".newsletter-form").validator().on("submit", function (event) {
        if (event.isDefaultPrevented()) {
            formErrorSub();
            submitMSGSub(false, "Please enter your email correctly.");
        } else {
            event.preventDefault();
        }
    });

    function callbackFunction(resp) {
        if (resp.result === "success") {
            formSuccessSub();
        } else {
            formErrorSub();
        }
    }

    function formSuccessSub() {
        $(".newsletter-form")[0].reset();
        submitMSGSub(true, "Thank you for subscribing!");
        setTimeout(function () {
            $("#validator-newsletter").addClass('hide');
        }, 4000)
    }

    function formErrorSub() {
        $(".newsletter-form").addClass("animated shake");
        setTimeout(function () {
            $(".newsletter-form").removeClass("animated shake");
        }, 1000)
    }

    function submitMSGSub(valid, msg) {
        if (valid) {
            var msgClasses = "validation-success";
        } else {
            var msgClasses = "validation-danger";
        }
        $("#validator-newsletter").removeClass().addClass(msgClasses).text(msg);
    }

    $(".newsletter-form").ajaxChimp({url: "#", callback: callbackFunction});
    $(function () {
        $(window).on('scroll', function () {
            var scrolled = $(window).scrollTop();
            if (scrolled > 600) $('.go-top').addClass('active');
            if (scrolled < 600) $('.go-top').removeClass('active');
        });
        $('.go-top').on('click', function () {
            $("html, body").animate({scrollTop: "0"}, 500);
        });
    });
}(jQuery));