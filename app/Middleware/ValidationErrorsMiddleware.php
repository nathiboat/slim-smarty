<?php

namespace App\Middleware;

  class ValidationErrorsMiddleware extends Middleware
  {
      public function __invoke($request, $response, $next)
      {
      $smarty = $this->container->view->getSmarty();

      $smarty->assign(errors, $_SESSION['errors']);
      unset($_SESSION['errors']);

      $response = $next($request, $response);
      return $response;
  }
}
