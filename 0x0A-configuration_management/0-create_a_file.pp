# creates a file in /tmp using Puppet
file {'/tmp/school
  ensure => file,
  mode => '0744',
  owner => 'www.data',
  group => 'www.data',
  content => 'I love puppet'
}
