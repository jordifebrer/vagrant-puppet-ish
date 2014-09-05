
class nodejs {
  exec { "install_node":
    command => "/usr/bin/apt-get install nodejs npm -y --force-yes",
    path => "/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin",
  }

  file { '/usr/bin/node':
    ensure => 'link',
    target => "/usr/bin/nodejs",
  }
}
