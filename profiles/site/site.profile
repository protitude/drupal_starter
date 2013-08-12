<?php

/**
 * Implements hook_install_tasks().
 */
function thissite_install_tasks() {
  $tasks = array();
  $tasks['thissite_final'] = array();
  return $tasks;
}


/**
 * Final configurations for thissite.
 */
function thissite_final() {
  variable_set('site_name', 'thissite');
  variable_set('site_slogan', 'thissite');

  global $databases;
  $plus = $databases['default']['default']['database'];
  variable_set('site_mail', 'miles.france+' . $plus . '@gmail.com');

  // Final sanity check
  module_disable(array('devel', 'dblog', 'update'));

  // Finally, enable our permissions module.
  module_enable(array('thissite_users'));
}
