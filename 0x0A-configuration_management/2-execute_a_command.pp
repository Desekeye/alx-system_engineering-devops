# creates a manifest that kills a process killmenow using Puppet
exec {'pkill killmenow':
  path  => '/usr/bin:/usr/sbin:/bin',
}
