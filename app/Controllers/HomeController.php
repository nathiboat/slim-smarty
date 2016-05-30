<?php

namespace App\Controllers;


use Slim\Views\Smarty as View;

class HomeController extends Controller
{

  public function index($request, $response)
  {
       $this->container->flash->addMessage('global','tet flash messsage');#
       $this->container->flash->addMessage('info','555 flash messsage');

      //  var_dump($this->container->flash);
      //  die();

       return $this->container->view->render($response, 'home.tpl');

  }
}
