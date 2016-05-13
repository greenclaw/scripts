#!/bin/bash

set -e

dockerctl backup
yum update
docker load -i /var/www/nailgun/docker/images/fuel-images.tar
dockerctl destroy all
dockerctl start all
fuel release --sync-development-tasks --dir /etc/puppet/
