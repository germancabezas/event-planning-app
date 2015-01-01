(function() {
  "use strict";

  angular.module("app").controller("photosCtrl", function($scope, FileUploader) {
    
    // Uploader is taken from https://github.com/nervgh/angular-file-upload

    $scope.setup = function(id) {
      $scope.userId = id;
      $scope.uploader = new FileUploader({url: '/photos?user_id=' + $scope.userId });
      $scope.uploader.onCompleteAll = function() {
        window.location = "/photos"
      };
    }

    window.scope = $scope;
  });

}());