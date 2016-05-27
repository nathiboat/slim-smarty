<?php

namespace App\Middleware;

  class OldInputMiddleware extends Middleware
  {
    public function __invoke($request, $response, $next)
    {
        $smarty = $this->container->view->getSmarty();

        if (!empty($_SESSION['old'])) {
          $smarty->assign('old', $_SESSION['old']);
          $_SESSION['old'] = $request->getParams();
        }


        $response = $next($request, $response);
        return $response;

    }
}
