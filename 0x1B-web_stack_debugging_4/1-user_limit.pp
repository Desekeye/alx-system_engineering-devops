# Enable the user to login and open files without error.

# Increase hard file limit for Holberton user.
exec { 'increase-hard-file-limit-for-user':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for  user.
exec { 'increase-soft-file-limit-for-user':
  command => 'sed -i "/alx soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
