package 'httpd' do
 action :install
end

file '/var/www/html/index.html' do
 content "
 <h1>HELLO WORLD FROM CHEF!</h1>
 <h2>ipaddress: #{node['ec2']['public_ipv4']}</h2>
 <h2>hostname: #{node['ec2']['public_hostname']}</h2>
 "
end

service 'httpd' do
 action [ :enable, :start ]
end
