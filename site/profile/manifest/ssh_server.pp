class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.VirtualMachine':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEzzdIAmE1gQIhIrm828pTwouIM6LJpru4j2vcpiWVr9Ua9/8OH1xxvf/xLEShSHUXufSaOXSrd9llOSanndbrCDh4pKQXhG7Ot5Waf3A/FlcR0gjGA1QMkOu7YonOQU1IuymzI0N05+8DXpIa7sv8ch3uYObrjilHRu4kQdp185W7euoPg2DVB3++UCmacJ0yjxNxIyLBH2HqayjcYORxlcCc4Z0zq2CmgofJgSsU9QvMHNGJ4frCP0kiBWEu28QwbMYqupUY0cAskQCE7bvCJATOfKXkdfK+9uZyqCNX9mzBA9gNS1hVHgl04xiFEAECi+zn/d44ARbz5QkgVB0d',
  }  
}
