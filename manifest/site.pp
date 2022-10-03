node default {
  file { '/root/README':
    ensure  => file,
    content => 'I'm using r10k on my demo RedHat vm with Puppet to manage my production environment configuration in this repo.',
    owner   => 'root',
   }
}
node 'master.puppet.VirtuialMachine' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
