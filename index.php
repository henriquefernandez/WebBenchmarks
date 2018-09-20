<?php

use Phalcon\Mvc\Micro;

$app = new Micro();
$app->getRouter()->setUriSource(\Phalcon\Mvc\Router::URI_SOURCE_SERVER_REQUEST_URI);

$app->get('/hello', function () {
  $x = '';
  for ($i = 0; $i <= 10000; $i++)  {
    $x .= $i;
  }
  echo $x;
});

$app->handle();