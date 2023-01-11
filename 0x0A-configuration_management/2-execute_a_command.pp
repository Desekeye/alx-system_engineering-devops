# creates a manifest that kills a process killmenow using Puppet
  exec {'kill - killmenow':
    command => 'pkill killmenow',
    path => '/usr/bin;
}
