package 'ntp' do
  action:install
end

package 'tree' do
  action:install
end

package 'git' do
  action:install
end

file '/etc/motd' do
  content "This server is the proprty of Vishal Shah
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']} 
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
  "
  owner 'root'
  group 'root'
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end
