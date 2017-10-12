apt_update 'Update the apt cache daily' do
  frequency 86400
  action :periodic
end

package 'apache2'

service 'apache2' do
  supports status: true
  action [:enable, :start]
end

git '/home/ubuntu/website' do
  repository 'https://github.com/JiyanBlack/cloudcomputing-group6.git'
  revision 'master'
  action :sync
  user 'ubuntu'
end

execute "create apache static file director" do
    command "sudo mkdir /var/www/html/"
    user "ubuntu"
end

execute "copy files to apache director" do
    command "sudo cp -R /home/ubuntu/website/server/static/* /var/www/html/"
    user "ubuntu"
end