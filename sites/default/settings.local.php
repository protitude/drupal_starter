<?php
global $conf;

$databases = array (
  'default' => array (
    'default' => array (
      'database' => 'site_thissite',
      'username' => 'root',
      'password' => 'root',
      'host' => 'localhost',
      'port' => '',
      'driver' => 'mysql',
      'prefix' => '',
    ),
  ),
);

$conf['file_temporary_path'] = '/tmp';
$base_url = 'http://thissite.com' . $path;
