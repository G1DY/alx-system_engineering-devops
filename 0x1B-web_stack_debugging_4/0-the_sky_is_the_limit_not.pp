#fixes ddos
exec {'replace':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  before   => ['restart'],
}

exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}

