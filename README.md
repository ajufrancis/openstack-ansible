# OpenStack Install on Bare Metal Servers using Ansible

This repository contains an Ansible-based install for OpenStack on
bare metal (i.e. native hardware).  These scripts are based on the
[Icehouse Install Guide](http://docs.openstack.org/icehouse/install-guide/install/apt/content/).

## Install prereqs

You'll need to install:

* [Ansible](http://ansible.github.com)

## Get the files

git clone https://github.com/peterstac/openstack-ansible.git

## Setup the variables (at a minimum the ip addresses for your install)

vi group_vars/all
vi hosts

## Push up an authorized key to each of the three machines

scp ~/.ssh/id_rsa.pub remote_user@controller:~/.ssh/authorized_keys

Note: This will replace the entire file - edit it if you wish to preserve other access keys

## Make sure ansible can talk to the machines

./ping.sh remote_user

## Start the install

./install.sh all

