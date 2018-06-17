# https://github.com/sous-chefs/ruby_rbenv/#gem


gem_package "puma" do
  action [:install, :upgrade]
  gem_binary node[:gem][:binary_path]
  options node[:gem][:default_optins]
  timeout 200
end


directory 'Create log directory for Puma' do
  path node['puma']['log_dir']
  owner 'root'
  group 'root'
  # mode '0755'
  action :create
end
