class { 'nvm':
  user => 'vagrant',
  nvm_dir => '/home/vagrant/.nvm',
  profile_path => '/home/vagrant/.profile',
  install_node => '0.12',
}
