#! /bin/bash

#
# Check for ansible
#
which ansible >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
   sudo yum install -y ansible python2-dnf
fi

#
# Check for git
#
which git >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
   sudo yum install -y git
fi

typeset ME=$(whoami)
sudo ansible-playbook local.yml -v --extra-vars="user=$ME"



