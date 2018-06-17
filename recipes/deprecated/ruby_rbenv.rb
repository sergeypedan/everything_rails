# depends 'ruby_rbenv', '~> 2.0.5'




# https://supermarket.chef.io/cookbooks/ruby_rbenv
# https://github.com/sous-chefs/ruby_rbenv/
# https://github.com/sous-chefs/ruby_rbenv/tree/master/test/fixtures/cookbooks/test/recipes
# https://libraries.io/github/sous-chefs/ruby_rbenv

# include_recipe 'ruby_rbenv::system'


# Install Rbenv Globally, to the system path e.g. /usr/local/rbenv
# https://github.com/sous-chefs/ruby_rbenv/blob/master/test/fixtures/cookbooks/test/recipes/system_install.rb
#
rbenv_system_install 'system' do
  update_rbenv false
end


# Install a Ruby version
# https://github.com/sous-chefs/ruby_rbenv/blob/master/test/fixtures/cookbooks/test/recipes/global.rb
#
rbenv_ruby node['ruby_version'] do
  verbose true
	# user # Optional: If passed the user rbenv to install to
end


# https://github.com/sous-chefs/ruby_rbenv/blob/master/test/fixtures/cookbooks/test/recipes/plugin.rb
# If user is passed in, the plugin is installed to the users install of rbenv.
#
# rbenv_plugin 'ruby-build' do
#   git_url 'https://github.com/rbenv/ruby-build.git'
#   user # Optional: if passed installs to the users rbenv. Do not set, to set installs to the system rbenv.
#   user 'vagrant'
# end


# Set that Ruby as the global Ruby
# https://github.com/sous-chefs/ruby_rbenv/blob/master/test/fixtures/cookbooks/test/recipes/global.rb
#
rbenv_global node['ruby_version']


# Rehash
#
rbenv_rehash 'defaultness'
