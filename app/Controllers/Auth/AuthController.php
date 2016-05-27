<?php

namespace App\Controllers\Auth;

use App\Models\User;
use App\Controllers\Controller;
use Respect\Validation\Validator as v;

class AuthController extends Controller
{

  public function getSignUp($request, $response)
  {

    return $this->container->view->render($response, 'auth/signup.tpl');
  }

  public function postSignUp($request, $response)
  {
    $validation = $this->container->validator->validate($request, [
        'email' => v::noWhitespace()->notEmpty()->email()->emailAvailable(),
        'name' => v::notEmpty()->alpha(),
        'password' => v::noWhitespace()->notEmpty(),
    ]);



    if($validation->failed()){
      return $response->withRedirect($this->container->router->pathFor('auth.signup'));
    }
    $user = User::create([
      'email' => $request->getParam('email'),
      'name' => $request->getParam('name'),
      'password' => password_hash($request->getParam('password'), PASSWORD_DEFAULT),
    ]);

    return $response->withRedirect($this->container->router->pathFor('home'));
  }
}
