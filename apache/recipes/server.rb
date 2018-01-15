package 'httpd' do
 action :install
end

remote_file  '/var/www/html/lakers.png' do
  source 'http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/lal.png'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  notifies :restart, 'service[httpd]', :immediately
  action :create
end

service 'httpd' do
 action [ :enable, :start ]
end
