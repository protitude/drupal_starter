<?php

$path = '';

// Never allow updating modules through UI.
$conf['allow_authorize_operations'] = FALSE;

  // Caching across all of wwwng.
  $conf['cache'] = 1;
  $conf['block_cache'] = 1;

  // Min cache lifetime 0, max 5 mins * 60 = 300 seconds.
  $conf['cache_lifetime'] = 0;
  $conf['page_cache_maximum_age'] = 300;

  // Aggregate css and js files.
  $conf['preprocess_css'] = TRUE;
  $conf['preprocess_js'] = FALSE;
  // Disable poorman cron.
  $conf['cron_safe_threshold'] = 0;

  $base_url = '/' . $path;

/**
 * Include a local settings file if it exists.
 */
$local_settings = dirname(__FILE__) . '/settings.local.php';
if (file_exists($local_settings)) {
  include $local_settings;
}

$conf['install_profile'] = 'tob';
