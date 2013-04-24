group{ 'puppet': ensure  => present }

node 'elastic1' {
  Package {
    require  => Exec['apt-get_update']
  }

  exec { 'apt-get_update':
    command     => '/usr/bin/apt-get update',
  }

  include elasticsearch
}
