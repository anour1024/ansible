#!/bin/sh
# This script runs the create_user.yml playbook for multiple users
for USER in $@
do
    ansible-playbook ../create_user.yml --extra-vars "uname=$USER upassword=$USER"
done