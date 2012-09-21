$(document).ready(function() {
    $('#itemLevel td').each(function() {
        var a = 1;
        var b = 1;
        $(this).append('<br/><img src="/assets/active_scaffold/add.png" /><img src="/assets/active_scaffold/close.png" />');
    });

    $('img[src$="add.png"]').click(function() {
        var val = $(this).prev().prev().val();
        if(val === '') {
            $(this).prev().prev().val(1);
        } else {
            var newVal = parseInt(val, 10) + 1;
            $(this).prev().prev().val(newVal);
        }
    });

    $('img[src$="close.png"]').click(function() {
        var val = $(this).prev().prev().prev().val();
        if(val === '' || val === '0') {
            $(this).prev().prev().val(0);
        } else {
            var newVal = parseInt(val, 10) - 1;
            $(this).prev().prev().prev().val(newVal);
        }
    });
});