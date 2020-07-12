#
# Cookbook:: apache
# Recipe:: default
package 'httpd'

file '/var/www/html/index.html' do
  content "<h2>This is: #{node['name']}</h2><h1>Hello Lindsay!!</h1>"
end

service 'httpd' do
  action [ :enable, :start ]
end
