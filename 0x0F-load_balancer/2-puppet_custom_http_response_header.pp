# Add a custom HTTP header with Puppet

exec { 'update':
  command  => 'sudo apt-get -y update',
  before   => Exec['install Nginx'],
}

exec {'install Nginx':
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['header-line'],
}

exec {'restart Nginx':
  command => 'sudo service nginx restart',
}

exec { 'header-line':
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/"
  /etc/nginx/nginx.conf',
  require => Exec['restart Nginx']
}
