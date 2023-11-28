# Install nginx and config using the manifest.
include stdlib

$redirect = "
        location ~/redirect_me {
            return 301 https://github.com/Certifieddonnie;
        }"

# Update and Install nginx
exec { 'Update':
    command => 'sudo apt update',
    path    => '/usr/bin/'
}
package { 'nginx':
    ensure => 'installed',
}

# config nginx
file_line { 'Adding redirect':
    ensure => 'present',
    path   => '/etc/nginx/sites-enabled/default',
    after  => 'server_name _;',
    line   => $redirect,
}

# page content
file { '/var/www/html/index.html':
    content => 'Hello World!',
}

# starting nginx
service {'nginx':
    ensure  => running,
    require => Package['nginx'],
}
