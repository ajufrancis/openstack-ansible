#!/bin/sh

#set -vx

if [ $# -lt 1 ] ; then
  echo "Usage: $0 <all|tag> [keyfile]"
  exit 1;
fi

TAGS=$1
TAGS_ARG="--tags=$TAGS"
if [ x"$TAGS" = x"all" ] || [ x"$TAGS" = x"All" ] || [ x"$TAGS" = x"ALL" ]
then
  TAGS_ARG=
fi

KEYFILE=$2
KEYFILE_ARG="--private-key=~/.ssh/id_rsa"
if [ ! x"$KEYFILE" = x"" ]
then
  if [ ! -f "$KEYFILE" ]
  then
    echo "Key file '$KEYFILE' not found - using default"
  else
    KEYFILE_ARG="--private-key=$KEYFILE"
  fi
fi

echo Installing $TAGS
ansible-playbook -i hosts site.yml $KEYFILE_ARG --sudo -K $TAGS_ARG

