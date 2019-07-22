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
//= require jquery3
//= require jquery_ujs
//= require bootstrap
//= require activestorage
//= require_tree .
//= require select2-full

$(document).ready(function(){
    
//     $('select').select2({dropdownCssClass : 'bigdrop'});
//     $('select').select2({width: 'resolve'});
    
    $('select').select2({
        minimumResultsForSearch: -1
    });
    
//     $("select").select2({
//         width: 'resolve'
//     });
    $("#addTodo").hide();
    $("#plus").on('click', function(e){
        e.preventDefault();
        $("#addTodo").show();
    });
    $("#cancel").on('click', function(e){
        e.preventDefault();
        $("#addTodo").hide();
    });
    $("#submit").on('click', function(e){
        e.preventDefault();
        $(this).closest('form').submit();
    });
         
    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
    });
    
    $('input').on('ifClicked', function(){
        var elem = $(this).closest('.s')[0];
        var text = elem.innerText;
        var isCompleted = !($(this).iCheck('update')[0].checked);
//         alert("value = " + isCompleted);
        $.ajax({
            url: 'todos/update',
            type: 'put',
            data: {"text" : text, "isCompleted" : isCompleted}
        });
        if (isCompleted)
            elem.style.setProperty('text-decoration', 'line-through'); 
        else 
            elem.style.setProperty('text-decoration', 'none');
    });
    
    var inputs = document.getElementsByTagName('input');
    for (var i = 0; i < inputs.length; i++) {  
        var elem = inputs[i].closest('.s');
        var isCompleted = elem.getAttribute('data-flag');
        if (isCompleted == "true") {
            $(inputs[i]).iCheck('check');
            elem.style.setProperty('text-decoration', 'line-through'); 
        }
    }
});


