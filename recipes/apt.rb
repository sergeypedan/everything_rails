apt_update 'Update the apt cache daily' do
	frequency 21_600
	action :periodic
end

include_recipe 'system::upgrade_packages'

apt_package "aptitude" do
  action :install
end
