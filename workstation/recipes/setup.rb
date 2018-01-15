package 'ntp' do
  action:install
end

package 'tree' do
  action:install
end

package 'git' do
  action:install
end

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Vishal')
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end

user 'vish' do
  comment 'vishal shah'
  home '/home/vish'
  shell '/bin/bash'
end

group 'admins' do
  members 'vish'
end
