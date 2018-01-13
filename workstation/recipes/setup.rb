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
  content 'This server is the proprty of Vishal Shah'
  owner 'root'
  group 'root'
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end
