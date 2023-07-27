node slave1.puppet {
  package { 'httpd':
    ensure => installed, 
  }
  
  service { 'httpd': # описываем сервис 'httpd'
    ensure => running, # он должен быть запущен
    enable => true, # его нужно запускать автоматически при старте системы
  }

  
  file { '/var/www/html/index.html': 
    path => '/var/www/html/index.html',
    source => 'https://raw.githubusercontent.com/MaxChernoshey/itacademy-devops-files/master/02-tools/index.html',
  }
}

node slave2.puppet {
  package { 'php':
    ensure => installed,
  }
  package { 'httpd':
    ensure => installed,
  }
  service { 'httpd': # описываем сервис 'httpd'
    ensure => running, # он должен быть запущен
    enable => true, # его нужно запускать автоматически при старте системы
  }
  
  #file { '/var/www/html/index.html':
  # ensure  => absent,
  #}
  file { '/var/www/html/index.html': 
    path => '/var/www/html/index.html',
    source => 'https://raw.githubusercontent.com/MaxChernoshey/itacademy-devops-files/master/02-tools/index.html',
  }
  
  # file { '/var/www/html/index.php': 
  #  path => '/var/www/html/index.php',
  #  source => 'https://raw.githubusercontent.com/MaxChernoshey/itacademy-devops-files/master/02-tools/index.php',
  #}
}
