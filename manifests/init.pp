class phpmyadmin (
    $package_name     = $phpmyadmin::params::package_name,
    $config_dir       = $phpmyadmin::params::config_dir,
    $override_options = {},
  ) inherits phpmyadmin::params {

  package { 'phpMyAdmin':
    ensure => installed,
    name   => $package_name,
  }
  
  # Create a merged together set of options.  Rightmost hashes win over left.
  $options = phpmyadmin_deepmerge($phpmyadmin::params::default_options, $filtered_options)

  file { "${config_dir}/config.inc.php":
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('phpmyadmin/config.inc.php.erb'),
    require => [ Package['phpMyAdmin'], ],
  }

}
