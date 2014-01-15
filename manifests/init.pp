class phpmemcachedadmin (
    $package_name     = $phpmemcachedadmin::params::package_name,
    $config_dir       = $phpmemcachedadmin::params::config_dir,
    $override_options = {},
  ) inherits phpmemcachedadmin::params {

  package { 'phpMemcachedAdmin':
    ensure => installed,
    name   => $package_name,
  }
  
  # Create a merged together set of options.  Rightmost hashes win over left.
  $options = phpmemcachedadmin_deepmerge($phpmemcachedadmin::params::default_options, $filtered_options)

  file { "${config_dir}/Memcache.php":
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('phpmemcachedadmin/Memcache.php.erb'),
    require => [ Package['phpMemcachedAdmin'], ],
  }

}
