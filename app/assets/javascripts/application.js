// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap
//= require bootstrap-slider
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(".alert-success").alert();
window.setTimeout(function() { $(".alert-success").fadeOut('slow'); }, 3000);


$(document).ready(function() {
    var slider = $("#the_slider").slider({
        range: true,
        min: 10,
        max: 2000,
        values: [10, 250],
        slide: function(event, ui) {
            $("#min_price").val(ui.values[0]);
            $("#max_price").val(ui.values[1]);
        }
    });
    $("#min_price").val(slider.slider("values")[0]);
    $("#max_price").val(slider.slider("values")[1]);
});

$("#ex2").slider({});
