(function() {
  "use strict";

  angular.module("app").controller("photosCtrl", function($scope, FileUploader) {
    $scope.uploader = new FileUploader({url: '/photos'});

    window.scope = $scope;
  });

}());