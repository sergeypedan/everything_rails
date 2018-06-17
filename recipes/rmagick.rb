gem_package "rmagick" do
  action [:install, :upgrade]
  gem_binary node[:gem][:binary_path]
  options node[:gem][:default_optins]
  timeout 200
end
