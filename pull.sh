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

#
# Set git user
#
typeset git_user
git config --global user.name > /dev/null 2>&1
if [ "$?" -ne "0" ]; then
   echo -n "Enter your user name for git: "
   read git_user
   git config --global user.name $git_user
fi

#
# Set git email
#
typeset git_email
git config --global user.email >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
   echo -n "Enter your email for git: "
   read git_email
   git config --global user.email $git_email
fi

#
# Do ansible
#
typeset ME=$(whoami)
sudo ansible-playbook local.yml -v --extra-vars="user=$ME" $@

#
# Set these again in case ansible wiped them out
#
git config --global user.name $git_user >/dev/null 2>&1
git config --global user.email $git_email  >/dev/null 2>&1

