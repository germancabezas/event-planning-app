(function() {
  "use strict";

  angular.module("app").controller("photosCtrl", function($scope, FileUploader) {
    
    $scope.setup = function(id) {
      $scope.userId = id;
      $scope.uploader = new FileUploader({url: '/photos?user_id=' + $scope.userId });
      $scope.uploader.onCompleteAll = function() {
        console.info('onCompleteAll');
      };
    }

    

    window.scope = $scope;
  });

}());