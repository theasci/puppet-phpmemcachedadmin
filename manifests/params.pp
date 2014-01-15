class phpmemcachedadmin::params {

  case $::osfamily {
    'RedHat': {
      $config_dir   = '/etc/phpMemcachedAdmin'
      $package_name = 'phpMemcachedAdmin'
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only support osfamily RedHat.")
    }
  }

  $default_options = {
    'Default' => {
      'host' => 'localhost',
      'port' => '3306',
    },
  }
}
