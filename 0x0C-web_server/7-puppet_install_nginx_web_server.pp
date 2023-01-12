# Install Nginx web server (w/ Puppet)

exec { 'host-update':
  command => 'sudo sudo apt-get update -y',
  path    => ['/usr/bin', '/bin'],
  returns => [0,1]
}

exec { 'install-nginx':
  command => 'sudo apt-get install nginx -y',
  path    => ['/usr/bin', '/bin'],
  returns => [0,1]
}

exec {'hello-world':
  command => 'echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html',
  path    => ['/usr/bin', '/bin'],
  returns => [0,1]
}

exec {'redirect':
  command => '/usr/bin/sed -i "26i \\\tlocation /redirect_me {\n\t\t return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4"'
}

exec { 'restart':
  command => 'sudo service nginx restart',
  path    => ['/usr/bin', '/bin', '/usr/sbin'],
  returns => [0,1]
}
