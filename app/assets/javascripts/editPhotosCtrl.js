(function() {
  "use strict";

  angular.module("app").controller("editPhotosCtrl", ['$scope', '$http', function($scope, $http) {
    
    $scope.setup = function(userId, photoId) {
      $scope.userId = userId;
      $scope.photoId = photoId;

      $http.get("/api/v1/photos/" + photoId + ".json").then(function (response) {
        $scope.photo = response.data;
      }); 
    }

    $scope.saveChanges = function() {
      var photo = { name: $scope.photo.name, description: $scope.photo.description };
      $http.patch('/api/v1/photos/' + $scope.photoId + '.json', {photo: photo}).then(function(response) {
          window.location = '/photos/' + $scope.photoId;
        }, function (error) {
          $scope.errors = error.data.errors;
        });
    }

    window.scope = $scope;
  }]);

}());