class { 'nvm':
  user => 'vagrant',
  nvm_dir => '/home/vagrant/.nvm',
  profile_path => '/home/vagrant/.profile',
  install_node => '0.12',
}

package { 'authbind': ensure => 'present' }
package { 'graphicsmagick': ensure => 'present' }

file { '/etc/authbind/byport/80':
  ensure  => 'present',
  owner => 'vagrant',
  mode => '755',
}

file { '/etc/authbind/byport/443':
  ensure  => 'present',
  owner => 'vagrant',
  mode => '755',
}
