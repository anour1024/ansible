#!/bin/sh
# This script runs the remove_user.yml playbook for multiple users
for USER in $@
do
    ansible-playbook ../remove_user.yml --extra-vars "uname=$USER"
done