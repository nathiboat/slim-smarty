<?php

require __DIR__.'/../vendor/autoload.php';

$app = new \Slim\App([
    'settings' => [
        'displayErrorDetails' => true,
    ],
]);

// Fetch DI Container
$container = $app->getContainer();

// Register Smarty View helper
$container['view'] = function ($container) {
    $view = new \Slim\Views\Smarty(__DIR__.'/../views/templates', [
        'cacheDir' => __DIR__.'/../views/cache',
        'compileDir' => __DIR__.'/../views/templates_c',
    ]);

    // Add Slim specific plugins
    $smartyPlugins = new \Slim\Views\SmartyPlugins($container['router'], $container['request']->getUri());
    $view->registerPlugin('function', 'path_for', [$smartyPlugins, 'pathFor']);
    $view->registerPlugin('function', 'base_url', [$smartyPlugins, 'baseUrl']);
    return $view;
};

require __DIR__.'/../app/routes.php';
