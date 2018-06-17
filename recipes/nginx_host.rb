nginx_template_file_name = node['ssl']['enabled'] ? "nginx_Puma_SSL.erb" : "nginx_Puma.erb"

template "Create NGINX config file" do
  action :create
  path "/etc/nginx/sites-enabled/#{node['project']['domain']}"
  source nginx_template_file_name
end


file 'NGINX default site' do
  action :delete
  path "/etc/nginx/sites-enabled/default"
end


service 'nginx' do
  action [:enable, :restart]
  # subscribes :reload, 'file[/etc/nginx/ssl/example.crt]', :immediately
  supports status: true, restart: true, reload: true, start: true, stop: true
end
