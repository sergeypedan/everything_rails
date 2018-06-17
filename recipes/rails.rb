gem_package "rails" do
  action [:install]
  gem_binary node[:gem][:binary_path]
  options node[:gem][:default_optins]
  timeout 600
  version node['rails']['version']
end
