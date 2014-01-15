class phpmyadmin::vhost (
  $replace = true,
  $allow   = [ '127.0.0.1' ],
  ) {

  file { '/etc/httpd/conf.d/phpMyAdmin.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('phpmyadmin/phpMyAdmin.conf.erb'),
    notify  => Service['httpd'],
    require => Package['httpd'],
  }

}