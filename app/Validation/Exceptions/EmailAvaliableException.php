<?php

namespace App\Validation\Exceptions;

use Respect\Validation\Exceptions\ValidationException;

class EmailAbailableException extends ValidationException
{

  public static $defaultTempaltes = [
    self::MODE_DEFAULT = [
      self::STANDARD => 'Email is already taken.',
    ];
  ];


}
