# https://supermarket.chef.io/cookbooks/postgresql


apt_repository 'apt.postgresql.org' do
  uri 'http://apt.postgresql.org/pub/repos/apt'
  distribution "#{node['lsb']['codename']}-pgdg"
  components ['main', node['postgresql']['version']]
  key 'https://www.postgresql.org/media/keys/ACCC4CF8.asc'
  action :add
end


apt_update 'Update is necessary as we added to the apt cache' do
  action :update
end


apt_package "postgresql-#{node['postgresql']['version']}" do
  # package_name "postgresql-#{node['postgresql']['version']}"
  # version node['postgresql']['version']
  action :install
end


# for building a client-side application for `pg` gem
# or postgresql-server-dev-X.Y for building a server-side extension
#
apt_package "libpq-dev" do
  action [:install, :upgrade]
end

# # A dependency for PG gem
#
# apt_package "libpq" do
#   action [:install, :upgrade]
# end


template 'PG HBA' do
  version = node['postgresql']['version']
  path "/etc/postgresql/#{version}/main/pg_hba.conf"
  source "pg_hba.erb"
  action :create
end


# https://docs.chef.io/resource_service.html
#
service 'Restart PostgreSQL after PG HBA update' do
  # subscribes :restart, 'PG HBA', :immediately
  service_name 'postgresql'
  provider Chef::Provider::Service::Debian
  action :restart
  supports [:reload, :restart]
end


# Базу данных создаст миграция
# https://gist.github.com/exoer/1063712
#
# execute 'Create project DB' do
#   db_name     = node['postgresql']['db_name']
#   sql_command = "SELECT * FROM pg_database WHERE datname='#{db_name}'"
#   db_exists   = "psql --username=postgres --command=\"#{sql_command}\" | grep -c #{db_name}"

#   command "createdb #{db_name} --encoding=utf8 --template=template0"
#   user 'postgres'
#   action :run
#   not_if db_exists, user: 'postgres'
# end
