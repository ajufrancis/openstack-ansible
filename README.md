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

## Start the install

./install.sh all
