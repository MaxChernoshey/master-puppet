node default{
 file { '/root/README':
  ensure => file,
  content => 'Hello, slave 2',
 }
}
