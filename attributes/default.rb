node.default["deployer_user"] = "root"

node.default['deploy']['html_dir']    = "/var/www/html"
node.default['deploy']['project_dir'] = "#{node['deploy']['html_dir']}/#{node['project']['domain']}"
node.default['deploy']['git_dir']     = "#{node['deploy']['project_dir']}/git"
node.default['deploy']['work_dir']    = "#{node['deploy']['project_dir']}/current"
node.default['deploy']['shared_dir']  = "#{node['deploy']['project_dir']}/shared"

node.default[:gem][:binary_path]    = "/opt/rubies/#{node['ruby']['version']}/bin/gem"
node.default[:gem][:default_optins] = "--no-rdoc --no-ri"

# Node JS version
node.default['nodejs']['version'] = "9.11.1"
node.default['nodejs']['install_method'] = "package"

node.default['postgresql']['version'] = "10"
node.default['postgresql']['user']    = "postgres"

node.default['project']['name']   = "test"
node.default['project']['domain'] = "test.ru"

node.default['puma']['config_path'] = "#{node['deploy']['work_dir']}/config/puma/production.rb"
node.default['puma']['log_dir']     = "/var/log/puma/#{node['project']['domain']}"
node.default['puma']['pid_path']    = "/run/puma/#{node['project']['domain']}.pid"
node.default['puma']['sockets_dir'] = "/run"
node.default['puma']['socket_path'] = "/run/puma/#{node['project']['domain']}.sock"
node.default['puma']['state_path']  = "/run/puma/#{node['project']['domain']}.state"

node.default['rails']['version'] = "5.2.1"

# node.default['redisio']['version'] = "4.0.8"
# node.default['redisio']['mirror']  = "http://download.redis.io/releases"

# Ruby version
node.default['ruby']['version'] = "2.5.1"

# Node SSL
node.default['ssl']['enabled'] = true

node.default['system']['timezone'] = "Europe/Moscow"
