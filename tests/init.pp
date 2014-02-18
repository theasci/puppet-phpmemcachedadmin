class { 'epel': }

package { 'httpd':
  ensure => installed,
}

class { 'phpmemcachedadmin': 
  require => [ Package[httpd], Class['epel'], ],
}
