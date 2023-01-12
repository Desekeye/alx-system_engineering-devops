# configuration file (w/ Puppet)
file_line {'password-authenticate':
  ensure => 'present',
  path    => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no'
}

file_line {'private-key':
  ensure => 'present',
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
}
