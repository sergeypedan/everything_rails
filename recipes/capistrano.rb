gem_package "capistrano" do
  gem_binary node[:gem][:binary_path]
  action [:install, :upgrade]
  options node[:gem][:default_optins]
end
