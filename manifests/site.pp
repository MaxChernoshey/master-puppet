node slave1.puppet {
  package { 'apache2':
    ensure => installed,
  }
  file { '/var/www/html/index.html':
    ensure  => absent,
  }
  file { '/var/www/html/index.html': 
    path => '/var/www/html/index.html',
    source => 'https://raw.githubusercontent.com/MaxChernoshey/itacademy-devops-files/master/02-tools/index.html',
  }
}

node slave2.puppet {
  package { 'php':
    ensure => installed,
  
  package { 'apache2':
    ensure => installed,
  }
  file { '/var/www/html/index.html':
    ensure  => absent,
  }
  file { '/var/www/html/index.php': 
    path => '/var/www/html/index.php',
    source => 'https://raw.githubusercontent.com/MaxChernoshey/itacademy-devops-files/master/02-tools/index.php',
  }
}
