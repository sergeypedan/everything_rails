# # https://docs.chef.io/resource_ruby.html

# ruby 'Set ENV variables' do
#   action :run
#   code <<-EOH
#     ENV['RACK_ENV']  = 'production'
#     ENV['RAILS_ENV'] = 'production'
#   EOH
# end


bash 'Add RAILS_ENV to ENV' do
  code   "echo 'RAILS_ENV=production' >> '/etc/environment'"
  not_if "cat '/etc/environment' | grep 'RAILS_ENV=production'"
end


bash 'Add RACK_ENV to ENV' do
  code   "echo 'RACK_ENV=production' >> '/etc/environment'"
  not_if "cat '/etc/environment' | grep 'RAILS_ENV=production'"
end



# bash 'Add RAILS_SECRET_KEY_BASE to ENV' do
#   code   "echo 'RAILS_SECRET_KEY_BASE=#{::STDIN.readline}' >> '/etc/environment'"
#   not_if "cat '/etc/environment' | grep 'RAILS_SECRET_KEY_BASE='"
# end
