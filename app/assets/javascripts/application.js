// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap
//= require_tree .
//
$(document).ready(function() {

    $('.tab-content>div').hide();
    $('.tab-content>div').first().slideDown();
    $('.tab-buttons span').click(function() {
        var thisclass = $(this).attr('class');
        $('#lamp').removeClass().addClass('#lamp').addClass(thisclass);
        $('.tab-content>div').each(function() {
            if ($(this).hasClass(thisclass)) {
                $(this).fadeIn(800);
            } else {
                $(this).hide();
            }
        });
    });
});