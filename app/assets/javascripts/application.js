// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

$("button.make-main").on("click", function() {
  var $clickedButton = $(this);
  
  $("button.make-main").removeClass("data-selected");
  $("button.make-main").text("make default");
  $clickedButton.addClass("data-selected");
  
  $clickedButton.text("Awesome!");

  // There is certainly a better way...
  setTimeout(function() {
    $clickedButton.text("I’ll remember!");

    setTimeout(function() {
      $clickedButton.text("Default");
    }, 1000);
  }, 700);
  
});
