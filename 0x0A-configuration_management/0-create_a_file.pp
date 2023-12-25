# create a file in /tmp

file { 'school':
  ensure  => file,
  mode    => '0744',
  path    => '/tmp/school',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
