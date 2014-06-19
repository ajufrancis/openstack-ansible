#!/bin/sh

#set -vx

if [ $# != 1 ] ; then
  echo "Usage: $0 <remote_user>"
  exit 1;
fi

REMOTE_USER=$1

ansible -i hosts all -m ping --user=$REMOTE_USER --private-key ~/.ssh/id_rsa
