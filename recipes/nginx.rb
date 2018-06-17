# https://www.nginx.com/blog/installing-nginx-nginx-plus-chef/
# https://supermarket.chef.io/cookbooks/nginx
# https://github.com/chef-cookbooks/nginx


package 'nginx' do
  action [:install, :upgrade]
end
