sudo apt-get update
sudo apt-get -y upgrade
curl -LJO https://packages.gitlab.com/gitlab/gitlab-ce/packages/debian/jessie/gitlab-ce_8.0.2-ce.1_amd64.deb/download
sudo dpkg -i gitlab-ce_8.0.2-ce.1_amd64.deb
sudo gitlab-ctl reconfigure
