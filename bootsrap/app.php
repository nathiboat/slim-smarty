<?php

require __DIR__.'/../vendor/autoload.php';

$app = new \Slim\App([
  'settings' => [
    'displayErrorDetails' => true,
  ]
]);

$app->get('/', function($request, $response){ 
  return 'Home';
});
