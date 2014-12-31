(function() {
  "use strict";

  angular.module("app").controller("photosCtrl", function($scope, FileUploader) {
    $scope.uploader = new FileUploader({url: '/photos'});

    $scope.uploader.onCompleteAll = function() {
      console.info('onCompleteAll');
    };

    window.scope = $scope;
  });

}());