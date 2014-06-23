# OpenStack Install on Bare Metal Servers using Ansible

This repository contains an Ansible-based install for OpenStack on
bare metal (i.e. native hardware).  These scripts are based on the
[Icehouse Install Guide](http://docs.openstack.org/icehouse/install-guide/install/apt/content/).

## Install prereqs

You'll need to install:

* [Ansible](http://ansible.github.com)

## Get the files

git clone https://github.com/peterstac/openstack-ansible.git

## Make sure your machines are set up according to the install guide.

vi README.network

## Setup the variables (at a minimum the ip addresses for your install)

cp custom_vars.yml.sample custom_vars.yml
vi custom_vars.yml
vi hosts

## Push up an authorized key to each of the three machines

scp ~/.ssh/id_rsa.pub remote_user@controller:~/.ssh/authorized_keys
(do this for network1 and compute1  as well)

Note: This will replace the entire file - edit it if you wish to preserve other access keys

## Make sure ansible can talk to the machines

./ping.sh remote_user

## Start the install

./install.sh all

## To install in modular format, run help for list of valid tags

./install.sh help

