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

  $clusters = {
    'Default' => {
      '127.0.0.1:11211' => {
        'host' => '127.0.0.1',
        'port' => '11211',
      },
    },
  }

}
