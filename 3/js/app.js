var myApp = angular.module('app',[]);
myApp.controller( 'displayData', ['$scope', '$http',
    function($scope, $http) {
   
	$http.get('http://dell90300:7101/wqcs/rest/Events/').
        success(function(data) {
            $scope.events = data;
            console.log($scope.user);
        });
    }]);