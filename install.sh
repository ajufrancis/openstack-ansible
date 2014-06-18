#!/bin/sh

#set -vx

if [ $# != 1 ] ; then
  echo "Usage: $0 <all|common|keystone|glance|nova|neutron|cinder>"
  exit 1;
fi

TAGS=$1
TAGS_ARG="--tags=$1"
if [ x"$TAGS" = x"all" ] || [ x"$TAGS" = x"All" ] || [ x"$TAGS" = x"ALL" ]
then
  TAGS_ARG=
fi

echo Installing $TAGS
ansible-playbook -i hosts site.yml --private-key=~/.ssh/id_rsa --sudo -K --tags=$TAGS

