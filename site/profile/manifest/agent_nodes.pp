class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.puppet.VirtualMachine':}
  dockeragent::node{'db.puppet.VirtualMachine':}
}
