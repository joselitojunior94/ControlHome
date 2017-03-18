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
//= require jquery3	
//= require jquery_ujs
//= require jquery-ui
//= require twitter/bootstrap
//= require turbolinks
//= require maskedinput
//= require bootstrap-datepicker
//= require jquery-ui/widgets/datepicker
//= require_tree .

$(document).on('turbolinks:load', function() {

  $(document).ready(function() {
  	$('.local').mask('a 9999');
  	$('.cpf').mask('999.999.999-99'); 
  	$('.iptu').mask('9999999999999-99');
  	$('.data').mask('99/99/9999');
  	$('.money2').mask('999,99');
  	$('.local_g').mask('a9 999');
  	$('.placa').mask('aaa-9999');
    $('.banco').mask('999999999999999999999999999999999999999999');
    
    $('.datepicker').datepicker({
      dateFormat: "dd/mm/yy",
            showOtherMonths: true,
            selectOtherMonths: true,
            autoclose: true,
            changeMonth: true,
            changeYear: true,
            todayHighlight: true,
            language: 'pt-BR',
    });
    
    
  });
});






