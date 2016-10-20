"use strict";

(function(){

  $('#antlab').hover(
  	function() {
      $(this).find('#antlabOut').hide();
      $(this).find('#antlabIn').show();
  	}, function () {
  	  $(this).find('#antlabOut').show();
  	  $(this).find('#antlabIn').hide();
  	}
  	);

  $('#amsterdam').hover(
  	function() {
      $(this).find('#amsterdamOut').hide();
      $(this).find('#amsterdamIn').show();
  	}, function () {
  	  $(this).find('#amsterdamOut').show();
  	  $(this).find('#amsterdamIn').hide();
  	}
  	);

})();