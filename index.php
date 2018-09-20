<?php

use Phalcon\Mvc\Micro;

$app = new Micro();
$app->getRouter()->setUriSource(\Phalcon\Mvc\Router::URI_SOURCE_SERVER_REQUEST_URI);

$app->get('/10000', function () {
  $x = '';
  for ($i = 0; $i <= 10000; $i++)  {
    $x .= $i;
  }
  echo $x;
});

$app->get('/1000', function () {
  $x = '';
  for ($i = 0; $i <= 1000; $i++)  {
    $x .= $i;
  }
  echo $x;
});

$app->get('/100', function () {
  $x = '';
  for ($i = 0; $i <= 100; $i++)  {
    $x .= $i;
  }
  echo $x;
});

$app->get('/', function () {
  echo json_encode(["text" => "text"]);
});

$app->handle();