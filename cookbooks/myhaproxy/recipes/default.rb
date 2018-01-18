#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#the following finds nodes that have a role of web and a chef environment that matches the environment of the LB.  So if the LB is in prod, it'll be prod, else another environment
all_web_nodes = search('node',"role:web AND chef_environment:#{node.chef_environment}")

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
