# https://yarnpkg.com/en/docs/install#debian-stable

# configure the repository


bash 'Configure Yarn repository' do
  code <<-EOF
  	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
		echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  EOF

  not_if "which yarn"
end

apt_update 'Update is necessary as we added to the apt cache' do
  action :update
end

apt_package "yarn"
