class phpmyadmin::params {

  case $::osfamily {
    'RedHat': {
      $config_dir   = '/etc/phpMyAdmin'
      $package_name = 'phpmyadmin'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only support osfamily RedHat.")
    }
  }

  $default_options = {
    'Servers' => {
      'host'                    => 'localhost',
      'connect_type'            => 'tcp',
      'extension'               => 'mysqli',
      'compress'                => 'FALSE',
      'auth_type'               => 'http',
      'verbose_check'           => 'TRUE',
      'AllowRoot'               => 'TRUE',
      'AllowNoPassword'         => 'TRUE',
      'bs_garbage_threshold'    => '50',
      'bs_repository_threshold' => '32M',
      'bs_temp_blob_timeout'    => '600',
      'bs_temp_log_threshold'   => '32M',
    },
  }
}