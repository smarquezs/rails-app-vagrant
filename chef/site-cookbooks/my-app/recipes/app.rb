include_recipe "ruby_build"
include_recipe "rbenv::user"

include_recipe 'mysql::client'

include_recipe "nginx::source"
include_recipe "nginx::passenger"
include_recipe "nginx::http_realip_module"
include_recipe "nginx::upload_progress_module"
include_recipe "nginx::http_gzip_static_module"
include_recipe "nginx::http_stub_status_module"

include_recipe "imagemagick"

# nginx virtual host configuration

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'nginx/default-site.erb'
  owner  'root'
  group  'root'
  mode   0644
  notifies :reload, 'service[nginx]'
end