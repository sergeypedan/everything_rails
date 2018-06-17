# https://supermarket.chef.io/cookbooks/redis
# https://supermarket.chef.io/cookbooks/redisio
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-redis-on-ubuntu-16-04


# RedisIO does not work with Chef13 yet. Waiting…
# include_recipe 'redisio::default'
# include_recipe 'redisio::install'
# include_recipe 'redisio::enable'


package 'build-essential'

package 'tcl'


package 'redis-server' do
  action [:install, :upgrade]
end

service 'redis-server' do
  action [:enable, :start]
  supports status: true, start: true
end
