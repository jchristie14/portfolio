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

    $('#rickify').hover(
  	function() {
      $(this).find('#rickifyOut').hide();
      $(this).find('#rickifyIn').show();
  	}, function () {
  	  $(this).find('#rickifyOut').show();
  	  $(this).find('#rickifyIn').hide();
  	}
  	);

  	$('#graffiti').hover(
  	function() {
      $(this).find('#graffitiOut').hide();
      $(this).find('#graffitiIn').show();
  	}, function () {
  	  $(this).find('#graffitiOut').show();
  	  $(this).find('#graffitiIn').hide();
  	}
  	);

})();