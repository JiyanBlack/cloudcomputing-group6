sudo apt-get update

sudo ufw allow 'Nginx Full'
sudo apt-get install nginx

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash
sudo apt-get install -y nodejs