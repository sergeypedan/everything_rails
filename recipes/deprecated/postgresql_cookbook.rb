# depends 'postgresql', '~> 6.1.1'






# https://supermarket.chef.io/cookbooks/postgresql
# https://github.com/sous-chefs/postgresql

# version of postgresql to manage
default['postgresql']['version'] = '10'

# home directory of where postgresql data and configuration lives.
# default['postgresql']['dir']

# An array of package names that should be installed on "client" systems.
default['postgresql']['client']['packages'] = ['postgresql-client']

# An array of package names that should be installed on "server" systems.
default['postgresql']['server']['packages'] = ['postgresql-10']

# Type of notification triggered when a config file changes.
# default['postgresql']['server']['config_change_notify']

# An array of package names that could be installed on "server" systems for useful sysadmin tools.
# default['postgresql']['contrib']['packages']

# Whether to enable the apt repo by the PostgreSQL Global Development Group, which contains newer versions of PostgreSQL.
default['postgresql']['enable_pgdg_apt'] = true

# Whether to enable the yum repo by the PostgreSQL Global Development Group, which contains newer versions of PostgreSQL.
default['postgresql']['enable_pgdg_yum'] = false

# Sets the default locale for the database cluster.
# If this attribute is not specified, the locale is inherited from the environment that initdb runs in.
# Sometimes you must have a system locale that is not what you want for your database cluster, and this attribute addresses that scenario.
# Valid only for EL-family distros (RedHat/Centos/etc.).
# default['postgresql']['initdb_locale'] = 'UTF-8'
default['postgresql']['initdb_locale'] = 'ru_RU.utf8'

default['postgresql']['config']['listen_addresses'] = 'localhost'

default['postgresql']['config']['datestyle'] = 'iso, ymd'

default['postgresql']['password']['postgres'] = '12345'

# node['postgresql']['server']['packages'] = ["postgresql-10-server"]
# node['postgresql']['server']['service_name'] = "postgresql-10"
# node['postgresql']['contrib']['packages'] = ["postgresql94-contrib"]

include_recipe 'postgresql::server'

# https://github.com/sous-chefs/postgresql#postgresql_access
postgresql_access 'local_postgres_superuser' do
  comment 'Local postgres superuser access'
  access_type 'local'
  access_db 'all'
  access_user 'postgres'
  access_addr nil
  access_method 'ident'
end
