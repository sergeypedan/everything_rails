# # https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions

# node_version = node['nodejs']['version'].to_s

# puts "Will install NodeJS version from 'curl -sL https://deb.nodesource.com/setup_#{node_version}.x | sudo -E bash -'"

# bash 'extract_module' do
#   code "curl -sL https://deb.nodesource.com/setup_#{node_version}.x | sudo -E bash -"
#   not_if { system("which node") && `node -v`.include?(node_version) }
# end

# # apt_package "NodeJS" do
# #   package_name "nodejs"
# #   action :upgrade
# # end

# bash "Install specific version of node" do
#   cod "apt-get install nodejs=#{node_version}"
# end

# apt_package "build-essential" # Build tools to compile and install native addons from NPM


include_recipe "nodejs::nodejs_from_package"
