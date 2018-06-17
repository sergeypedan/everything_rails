group 'sudo'

user 'deploy' do
	group 'sudo'
	system true
	shell '/bin/bash'
  not_if { node["deployer_user"] == "root" }
end


# This enables 'deploy' user to go around without password

file "/etc/sudoers.d/90-deploy" do
	content "deploy ALL=(ALL) NOPASSWD:ALL"
	owner "root"
	action :create
	# mode '0644'
	# group 'web_admin'
  not_if { node["deployer_user"] == "root" }
end
