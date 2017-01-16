// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function(){
  $("div.lang").click(function(){
    $(this).toggleClass("grow");
    $("aside.language").slideToggle("fast", function(){
      //
    });
  });

  $("div.frame").click(function(){
    $(this).toggleClass("grow");
    $("aside.framework").slideToggle("slow", function(){
      //
    });
  });

  $("div.tools").click(function(){
    $(this).toggleClass("grow");
    $("aside.tool_tech").slideToggle("slow", function(){
      //
    });
  });

  $("div.db").click(function(){
    $(this).toggleClass("grow");
    $("aside.datab").slideToggle("slow", function(){
      //
    });
  });

  $(".head_circle").click(function(){
    $(this).toggleClass('active');
    $('p.tag_line').toggleClass('show');
    $('nav').toggleClass('show');
  });



});
