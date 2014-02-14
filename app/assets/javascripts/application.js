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
//= require turbolinks
//= require_tree .

// var x = true;

function shoppingListCtrl($scope) {
	console.log("hello");
	$scope.count = 0;

// if(x == true)
		// {
			$scope.vote = function(){
			x = false;
			$scope.count = $scope.count + 1;
			console.log($scope.count);
			console.log(x);
		}
	};
	// $scope.shoppingList = [
	// 		{name: 'Sonos Play 1', price: 199.95, category: 'audio'},
	// 		{name: 'Sonos Play 3', price: 299.95, category: 'audio'},
	// 		{name: 'Sonos Play 5', price: 399.95, category: 'audio'},
	// 		{name: 'Bose Wave', price: 399, category: 'home theatre'},
	// 		{name: 'Sonos Bridge', price: 49, category: 'audio'},
	// 		{name: 'LG 60-inch Plasma TV', price: 1149.95, category: 'home theatre'},
	// 		{name: 'iPad Air 32GB + Cellular', price: 729, category: 'computer'}]

	// $scope.rev = true;

// }



