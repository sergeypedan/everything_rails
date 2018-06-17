directory "Create deploy directory" do
  action :create
  path node['deploy']['project_dir']
end


directory "Create Git receive directory" do
  action :create
  path node['deploy']['git_dir']
end


directory "Create shared directory" do
  action :create
  path node['deploy']['shared_dir']
end


bash "Initialize bare Git repo" do
  cwd node['deploy']['git_dir']
  code "git init --bare"
end


template "Puts post-receive hook in place" do
  action :create
  mode '0755'
  path "#{node['deploy']['git_dir']}/hooks/post-receive"
  source "post_receive_hook.erb"
end
