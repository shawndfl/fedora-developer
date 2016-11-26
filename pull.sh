#! /bin/bash
which ansible >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
   sudo yum install -y ansible python2-dnf
fi

sudo ansible-playbook local.yml



