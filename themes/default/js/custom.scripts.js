$(document).ready(function(e)
{
    $(window).scroll(function(e)
    {
        if ($(window).scrollTop() >= 100) {
            $('#header').addClass('appear');
        } else {
            $('#header').removeClass('appear');
        }

        $('.slide-up:not(".shown")').each(function(i, el)
        {
            if (isAboveViewport($(this))) {
                $(this).addClass('shown');
            } else if ($(this).visible(true)) {
                $(this).addClass('shown');
            }
        });
    });

    $('#main_nav .current').removeClass('current');

    $('#main_nav li a').click(function(e)
    {
        var to = $(this).data('scroll-to');
        if ($(to).length > 0) {
            e.preventDefault();
            $.scrollTo(to, 1000, {offset: -$('#header .columns:eq(0)').outerHeight()});
        }
    });

    $('#btn-mobile-menu').click(function(e)
    {
        e.preventDefault();
        $(this).toggleClass('active');
        $('#header').toggleClass('expose-menu');
    });

    $('.scroll-to').click(function(e)
    {
        e.preventDefault();
        $.scrollTo($(this).data('to'), 1000, {offset: -$('#header .columns:eq(0)').outerHeight()});
    });

    $('.fa-angle-down').click(function(e)
    {
        $.scrollTo($('#section-aboutme'), 500);
    });

    $('#btn-more-work').click(function(e)
    {
        e.preventDefault();
        var btn         =   $(this),
            h           =   $('.works').height();
        $('#work-list').addClass('loading');
        btn.addClass('is-loading');
        $.get($(this).attr('href'), function(data)
        {
            var data    =   $(data),
                href    =   data.find('#btn-more-work').length > 0 ? data.find('#btn-more-work').remove() : null,
                works   =   data.find('.work');

            if (works.length > 0) {
                works.addClass('hang-on');
                $('.works').append(works);
                var n   =   0,
                    len =   works.length;

                works.find('img').load(function(e)
                {
                    n += $(this).parents('.work:eq(0)').height();
                    len--;
                    if (len == 0) {
                        n -= works.length * 80;
                        h += n;
                        TweenMax.to($('.works'), 0.5, {height: h, onComplete: function()
                        {
                            $('.works').removeAttr('style');
                            $('#work-list').removeClass('loading');
                            works.removeClass('hang-on');
                            works.eq(0).addClass('shown');
                            $(window).scroll();

                            if (href && href.length > 0) {
                                btn.attr('href', href.attr('href'));
                                btn.removeClass('is-loading');
                            } else {
                                TweenMax.to(btn, 0.5, {opacity: 0, onComplete: function()
                                {
                                    btn.remove();
                                }});
                            }
                        }});
                    }
                });
            }
        });
    });
});
