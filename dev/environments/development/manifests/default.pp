class { 'nvm':
  user => 'vagrant',
  nvm_dir => '/home/vagrant/.nvm',
  profile_path => '/home/vagrant/.bashrc',
  install_node => '4.2.4',
}
