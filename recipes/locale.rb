# https://github.com/chef-cookbooks/locale
# https://supermarket.chef.io/cookbooks/locale

# node.default['locale']['lang']   = "en_US.utf8"
# node.default['locale']['lc_all'] = "ru_RU.utf8"

# include_recipe 'locale::default'



# Manual
# https://github.com/chef-cookbooks/locale/blob/master/resources/locale.rb
# https://docs.chef.io/resource_execute.html
# https://docs.chef.io/resource_file.html

file 'Delete existing locale' do
  action :delete
  path "/etc/default/locale"
end

file 'Set locale' do
  action :create
  path "/etc/default/locale"
  content <<~HEREDOC
            LANG=en_US.utf8
            LC_ALL=en_US.utf8
            LC_CTYPE=ru_RU.utf8
          HEREDOC
end
