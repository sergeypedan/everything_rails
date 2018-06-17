package 'imagemagick' do
	action [:install, :upgrade]
end

package 'libmagickcore-dev' do
	action :install
end

package 'libmagickwand-dev' do
	action :install
end
