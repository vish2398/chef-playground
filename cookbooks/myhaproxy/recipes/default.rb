#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

all_web_nodes = search('node','role:web')

members = []

all_web_nodes.each do |web_node|
  member = {
    'hostname' => web_node['hostname'],
    'ipaddress' => web_node['ipaddress'],
    'port' => 80,
    'ssl_port' => 80
  }
  members.push(member)

end

node.default['haproxy']['members'] = members

include_recipe "haproxy::manual"
