console.log("linked")

$(document).ready(function(){

	var button2 = $(".button2");
	var modal = $(".modal");

	var toggleModal = function(){
		modal.toggle();
		console.log("linked")

	};


	button2.on('click', toggleModal);

})