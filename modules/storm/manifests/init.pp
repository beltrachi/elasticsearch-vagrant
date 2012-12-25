class storm {

  package{['unzip','openjdk-6-jdk','vim','curl']: ensure => present  }

  package{ 'zeromq':
    ensure   => installed,
    provider => dpkg,
    source   => '/vagrant/pkg/libzmq1_2.1.7_amd64.deb',
  }

  package{ 'jzmq':
    ensure   => installed,
    provider => dpkg,
    source   => '/vagrant/pkg/libjzmq_2.1.7_amd64.deb',
    require  => Package['zeromq']
  }

  package { 'storm':
    ensure   => installed,
    provider => dpkg,
    source   => '/vagrant/pkg/storm_0.8.1_all.deb',
    require  => Package['openjdk-6-jdk','zeromq','jzmq','unzip']
  }

  file{ '/etc/storm/storm.yaml':
    ensure  => present,
    owner   => storm,
    group   => storm,
    source  => 'puppet:///modules/storm/storm.yaml',
    require => Package['storm']
  }
}
