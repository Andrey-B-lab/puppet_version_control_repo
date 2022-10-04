class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.puppet.VirtualMachine':}
  dockeragent::node{'db.puppet.VirtualMachine':}
  host {'web.puppet.VirtualMachine':
    ensure => present,
    ip     => '172.18.0.2',   ## In the real PRD environment I will use DNS.
  }
  host {'db.puppet.VirtualMachine':
    ensure => present,
    ip     => '172.18.0.3',   ## In the real PRD environment I will use DNS.
  }
}
