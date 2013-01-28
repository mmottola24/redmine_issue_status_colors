$(document).ready(function() {
    $('.color-picker').miniColors();
    $('.color-picker').each(function(){
        if ($(this).val() === '#') {
            $(this).val('');
        }
    });

    $('.clear-color-picker').click(function(){
        $(this).parent().find('.color-picker').val('');
        return false;
    });
});