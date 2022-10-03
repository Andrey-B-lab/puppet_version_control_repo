node default {
}
node 'master.puppet.VirtuialMachine' {
  include role::master_server
}
