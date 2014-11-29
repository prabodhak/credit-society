$(document).ready(function(){
	// stop enter key sumit on textbox
	var nav = window.Event ? true : false;
	if (nav) {
		 window.captureEvents(Event.KEYDOWN);
		 window.onkeydown = NetscapeEventHandler_KeyDown;
	} else {
		 document.onkeydown = MicrosoftEventHandler_KeyDown;
	}

	function NetscapeEventHandler_KeyDown(e) {
		if (e.which == 13 && e.target.type != 'textarea' && e.target.type != 'submit') {
			return false;
		}
			return true;
	}

	function MicrosoftEventHandler_KeyDown() {
		if (event.keyCode == 13 && event.srcElement.type != 'textarea' &&
			 event.srcElement.type!= 'submit')
			  return false;
		return true;
	}

	// on enter key press go to next textbox
	var currentBoxNumber = 0;
	//alert("hi");
	$("input, select, button").keyup(function (event) {
		if (event.keyCode == 13) {
			textboxes = $("input, select, button");
			//alert(textboxes.attr('class'));
			currentBoxNumber = textboxes.index(this);
			console.log(textboxes.index(this));
			if (textboxes[currentBoxNumber + 1] != null) {
				nextBox = textboxes[currentBoxNumber + 1];
				nextBox.focus();
				nextBox.select();
				event.preventDefault();
				return false;
			}
		}
	});
});