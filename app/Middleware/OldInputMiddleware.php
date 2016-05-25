<?php

namespace App\Middleware;

  class OldInputMiddleware extends Middleware
  {
    public function __invoke($request, $response, $next)
    {
        $smarty = $this->container->view->getSmarty();

        $smarty->assign('old', $SESSION['old']);
        $_SESSION['old'] = $request->getPArams();

        $response = $next($request, $response);
        return $response;

    }
}
