# https://supermarket.chef.io/cookbooks/chruby

# Chruby-specific variables
node.default['chruby']['version'] = '0.3.9'
node.default['chruby']['rubies']  = { node['ruby_version'] => true }
node.default['chruby']['default'] = node['ruby_version']

include_recipe 'chruby::system'
