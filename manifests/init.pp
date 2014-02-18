class phpmemcachedadmin (
    $package_name     = $phpmemcachedadmin::params::package_name,
    $config_dir       = $phpmemcachedadmin::params::config_dir,
    $clusters         = $phpmemcachedadmin::params::clusters,
  ) inherits phpmemcachedadmin::params {

  package { 'phpMemcachedAdmin':
    ensure => installed,
    name   => $package_name,
  }
  
  file { "${config_dir}/Memcache.php":
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('phpmemcachedadmin/Memcache.php.erb'),
    require => [ Package['phpMemcachedAdmin'], Package['httpd'], ],
  }

}
