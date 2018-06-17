gem_package "foreman" do
  gem_binary node[:gem][:binary_path]
  action [:install, :upgrade]
  options node[:gem][:default_optins]
  timeout 200
end
