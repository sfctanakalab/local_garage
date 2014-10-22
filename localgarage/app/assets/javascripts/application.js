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
//= require turbolinks
//= require jquery.turbolinks
//= require jquery_ujs
//= require Cosmo/loader
//= require Cosmo/bootswatch

function incSearch(){
  clearTimeout(incSearch.timeid);

  incSearch.timeid = setTimeout(function(){
    var query = tgtInput.value;
    if(query.length == 0) return false;

    jQuery.ajax({
      type : 'GET',
      url : '/printers/search',
      data : {
        q : query
      },
      timeout : 1500,
      success:function(data){
        if(data.result != "success") return false;
        changeDom(data.lists);
      },
      error:function(){
              return false;
            }
    });
  }, 500);
};
incSearch.timeid = "";

function changeDom(lists){
  if(lists.length == 0) return false;
};

var tgtInput = document.getElementById('tgtInput');
tgtInput.onkeydown = incSearch;

