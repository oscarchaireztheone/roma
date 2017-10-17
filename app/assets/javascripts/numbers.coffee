$(document).on "page:change", ->
	$('#cla-link').click -> 
		$('#phone-cla').fadeToggle()
		
	$('#dum-link').click ->
		$('#phone-dum').fadeToggle()