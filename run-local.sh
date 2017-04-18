#!/bin/sh
sudo ansible-playbook local.yml --extra-var=user=$(whoami)
