<?php

namespace App\Controllers;


use Slim\Views\Smarty as View;

class HomeController extends Controller
{

  public function index($request, $response)
  {

       return $this->container->view->render($response, 'home.tpl');

  }
}
