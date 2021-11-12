/* Write here your custom javascript codes */
var isMin = false;   
$('.span_link').click(function () {
    if (!isMin) {
        var src = $('#view_full_size img').attr('src').split('/')[4];
        $('#view_full_size img').prop({style : 'width : 60%', src : '/imgView/article/maxi/' + src});
        isMin = true;
    } else if (isMin) {
        var src = $('#view_full_size img').attr('src').split('/')[4];
        $('#view_full_size img').prop({style : 'width : auto', src : '/imgView/article/mini/' + src});
        isMin = false;
    }
});