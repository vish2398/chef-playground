#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [
	{
		"hostname" => 'web1',
		"ipaddress" => '192.168.10.43',
		"port" => 80,
		"ssl_port" => 80
	},
	{
		"hostname" => 'web2',
		"ipaddress" => '192.168.10.44',
		"port" => 80,
		"ssl_port" => 80
	}
]

include_recipe "haproxy::manual"
