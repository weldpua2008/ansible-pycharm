#!/usr/bin/env bash
#################################################
#
# Valeriy Solovyov <weldpua2008@gmail.com>
# Copyright(c) 2015
###############################################
set -e

SOURCE="${BASH_SOURCE[0]}"
RDIR="$( dirname "$SOURCE" )"
ANSIBLE_VERSION=$1

apt-get update
apt-get install python-pip python-dev

if [ "$ANSIBLE_VERSION" = "latest" ]; then
    pip install --upgrade ansible;
else
    pip install --upgrade ansible==$ANSIBLE_VERSION;
fi

cd $RDIR/..

printf "[defaults]\nroles_path = ../" > ansible.cfg
ansible-playbook -i tests/test-inventory tests/test.yml --syntax-check
ANSIBLE_SHORT_VERSION=`ansible-playbook --version 2> /dev/null|cut -d " " -f2|cut -d "." -f1,2` ansible-playbook -i tests/test-inventory tests/test.yml --connection=local --sudo

# Run the role/playbook again, checking to make sure it's idempotent.
ANSIBLE_SHORT_VERSION=`ansible-playbook --version 2> /dev/null|cut -d " " -f2|cut -d "." -f1,2` ansible-playbook -i tests/test-inventory tests/test.yml --connection=local --sudo | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)


exit 0
